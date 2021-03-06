const float noiseRes = float(noiseTextureResolution);
const float noiseScale = 256.0 / noiseRes;

vec3 SunColor = pow(GetSunColorZom(), vec3(2.0)) * vec3(1.2, 1.1, 1.00) * 1.9;
vec3 color = texture2D(colortex0, texcoord).rgb;
vec3 upvec = normalize(upPosition);
vec3 sunvec = normalize(sunPosition);
vec3 screenspace = vec3(texcoord, depth0);

vec3 viewspace = calculateViewSpace(screenspace);

vec3 viewvec = normalize(viewspace);

vec3 transmittance = vec3(1.0);

vec3 ambientColor = sky_atmosphereA(color, viewvec, upvec, sunvec, -sunvec, vec3(3.0), vec3(0.01), 8, transmittance, vec3(1.0)) * 1.8 * Ambient_Brightness + vec3(0.0, 0.2, 0.3);

vec3 MoonColor = GetMoonColorZom() * vec3(0.8, 1.1, 1.3);
//vec3 ambientColor = vec3(0.1) * vec3(0.5, 0.8, 1.0) * 25 + ((SunColor * 0.4) + (MoonColor * 0.5));
vec3 lightColor = SunColor + MoonColor;

float cubesmooth(float x) { return (x * x) * (3.0 - 2.0 * x); }
vec2 cubesmooth(vec2 x) { return (x * x) * (3.0 - 2.0 * x); }

float GetNoise(vec2 coord) {
	const vec2 madd = vec2(0.5 * noiseResInverse);
	vec2 whole = floor(coord);
	coord = whole + cubesmooth(coord - whole);
	
	return texture2D(noisetex, coord * noiseResInverse + madd).x;
}

vec2 GetNoise2D(vec2 coord) {
	const vec2 madd = vec2(0.5 * noiseResInverse);
	vec2 whole = floor(coord);
	coord = whole + cubesmooth(coord - whole);
	
	return texture2D(noisetex, coord * noiseResInverse + madd).xy;
}

float GetCoverage2D(float clouds, float coverage) {
	return cubesmooth(clamp01((coverage + clouds - 1.0) * 1.1 - 0.1));
}

float CloudFBM1(vec2 coord, out mat4x2 c, vec3 weights, float weight) {
	float cmult = 1.0;
	#ifdef Color_Compression
	cmult *= 0.0;
    #endif
	float time = CLOUD_SPEED_2D * cmult * frameTimeCounter * 0.01;
	
	c[0]    = coord * 0.007/2;
	c[0]   += GetNoise2D(c[0]) * 0.3 - 0.15;
	c[0].x  = c[0].x * 0.35 + time;
	
	float cloud = -GetNoise(c[0]);
	
	c[1]    = c[0] * 4.0 - cloud * vec2(0.5, 1.35);
	c[1].x += time;
	
	cloud += GetNoise(c[1]) * weights.x;
	
	c[2]  = c[1] * vec2(15.0, 1.65) + time * vec2(3.0, 0.55) - cloud * vec2(1.5, 0.75);
	
	cloud += GetNoise(c[2]) * weights.y;
	
	c[3]   = c[2] * 3.0 + time;
	
	cloud += GetNoise(c[3]) * weights.z;
	
	cloud  = weight - cloud;
	
	cloud += GetNoise(c[3] * 3.0 + time) * 0.022;
	cloud += GetNoise(c[3] * 9.0 + time * 3.0) * 0.014;
	
	return cloud * 0.65;
}

float CloudFBM2(vec2 coord, out mat4x2 c, vec3 weights, float weight) {
	float cmult = 1.0;
	#ifdef Color_Compression
	cmult *= 0.0;
    #endif
	float time = CLOUD_SPEED_2D * cmult * frameTimeCounter * 0.01;
	
	c[0]    = coord * 0.007/2;
	c[0]   += GetNoise2D(c[0]) * 0.3 - 0.15;
	c[0].x  = c[0].x * 0.25 + time;
	
	float cloud = -GetNoise(c[0]);
	
	c[1]    = c[0] * 1.0 - cloud * vec2(0.5, 1.35);
	c[1].x += time;
	
	cloud += GetNoise(c[1]) * weights.x;
	
	c[2]  = c[1] * vec2(9.0, 1.65) + time * vec2(3.0, 0.55) - cloud * vec2(1.5, 0.75);
	
	cloud += GetNoise(c[2]) * weights.y;
	
	c[3]   = c[2] * 3.0 + time;
	
	cloud += GetNoise(c[3]) * weights.z;
	
	cloud  = weight - cloud;
	
	cloud += GetNoise(c[3] * 3.0 + time) * 0.022;
	cloud += GetNoise(c[3] * 9.0 + time * 3.0) * 0.014;
	
	return cloud * 0.77;
}

void Compute2DClouds(inout vec3 color, inout float cloudAlpha, vec3 ray, float sunglow) {
#ifndef CLOUDS_2D
	return;
#endif
	
	
	const float cloudHeight = CLOUD_HEIGHT_2D;
	
	vec3 rayPos = cameraPosition;
	
	float visibility = 0.2;
	
	if (ray.y <= 0.0 != rayPos.y >= cloudHeight) return;
	
	
	const float coverage = CLOUD_COVERAGE_2D * 1.16;
	const vec3  weights  = vec3(0.5, 0.135, 0.075);
	const float weight   = weights.x + weights.y + weights.z;
	
	vec2 coord1 = ray.xz * ((cloudHeight - rayPos.y) / ray.y) + rayPos.xz;
	vec2 coord2 = ray.xz * ((cloudHeight + 500.0 - rayPos.y) / ray.y) + rayPos.xz;
	
	mat4x2 coords1;
	mat4x2 coords2;

	// Start of code for second cloud layer, done first so it mixes correctly
	////////////////////////////////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////////////////////////////////
	vec2 lightOffset = vec2(0.0, 0.2);
	float sunlight;

	vec3 direct  = lightColor * 0.6;
		 //direct  *= 7.4 * (SunColor + (MoonColor * 10));

	
	vec3 ambient = vec3(1.0) * 0.5 * ambientColor;
	ambient = ambientColor * vec3(1.0, 0.5, 0.2) * 0.4 * (SunColor + (MoonColor * 0.3));

	
	vec3 cloud = mix(ambient, direct, sunlight) * 15.0 * ((SunColor * 2) + MoonColor);


	#ifdef CloudFBM22
	cloudAlpha = CloudFBM1(coord2, coords2, weights, weight);
	cloudAlpha = GetCoverage2D(cloudAlpha, coverage);
	cloudAlpha = pow(cloudAlpha, 1.2);

	sunlight  = -GetNoise(coords2[0] + lightOffset)            ;
	sunlight +=  GetNoise(coords2[1] + lightOffset) * weights.x;
	sunlight +=  GetNoise(coords2[2] + lightOffset) * weights.y;
	sunlight +=  GetNoise(coords2[3] + lightOffset) * weights.z;
	sunlight  = GetCoverage2D(weight - sunlight, coverage);
	sunlight  = pow(1.3 - sunlight, 5.5);
	sunlight *= mix(pow(cloudAlpha, 1.6) * 2.5, 2.0, sunglow);
	sunlight *= mix(1.0, 1.0, sqrt(sunglow));
	

	
	color = mix(color, cloud, cloudAlpha * visibility);
	#endif

	// Start of code for first cloud layer
	////////////////////////////////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////////////////////////////////

	cloudAlpha = CloudFBM2(coord1, coords1, weights, weight);
	cloudAlpha = GetCoverage2D(cloudAlpha, coverage);
	cloudAlpha = pow(cloudAlpha, 1.5);


	sunlight  = 0.0;
	sunlight  = -GetNoise(coords1[0] + lightOffset)            ;
	sunlight +=  GetNoise(coords1[1] + lightOffset) * weights.x;
	sunlight +=  GetNoise(coords1[2] + lightOffset) * weights.y;
	sunlight +=  GetNoise(coords1[3] + lightOffset) * weights.z;
	sunlight  = GetCoverage2D(weight - sunlight, coverage);
	sunlight  = pow(1.3 - sunlight, 5.5);
	sunlight *= mix(pow(cloudAlpha, 1.6) * 2.5, 2.0, sunglow);
	sunlight *= mix(1.0, 1.0, sqrt(sunglow));
	
	     direct  = lightColor * vec3(0.5, 0.8, 1.0);
	     direct  *= 0.4 * (SunColor + (MoonColor * 1));
	
	ambient = vec3(1.0) * 0.5 * ambientColor * vec3(1.0, 0.4, 0.1) * 2;	
	cloud = mix(ambient, direct, sunlight) * 15.0 * ((SunColor * 2) + MoonColor);

	color = mix(color, cloud, cloudAlpha * 0.1);
	//color = clamp(color, 0.0, 1.0);
}