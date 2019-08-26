

////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////ORIGINAL SHADER SPROUT BY SILVIA//////////////////////////////////
/////Anyone downloading this has permission to edit anything within for personal use, but //////////
/////////////////////redistribution of any kind requires explicit permission.///////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////

#if (GBPreset == 1) //GameBoy
 int paletteSize = 7;
 vec3[] palette = vec3[7] ( 
    vec3(0.125, 0.125, 0.125),      
    vec3(0.138, 0.138, 0.138),       
    vec3(0.185, 0.185, 0.158),       
    vec3(0.369, 0.404, 0.271),        
    vec3(0.682, 0.729, 0.537),   
    vec3(0.164, 0.173, 0.141),       
    vec3(0.89,  0.933, 0.753)  
 );
 #endif

#if (GBPreset == 2) //Colorful GB
 int paletteSize = 7;
 vec3[] palette = vec3[7] ( 
    vec3(0.116, 0.106, 0.124),
    vec3(0.143, 0.119, 0.087),
    vec3(0.118, 0.383, 0.346),
    vec3(0.118, 0.376, 0.431),       
    vec3(0.353, 0.725, 0.659),
    vec3(0.104, 0.334, 0.383),
    vec3(0.769, 0.941, 0.761)
 );
 #endif

 #if (GBPreset == 3) //Link's Awakening
 int paletteSize = 6;
 vec3[] palette = vec3[6] ( 
    vec3(0.353, 0.224, 0.129),
    vec3(0.296, 0.188, 0.109),
    vec3(0.420, 0.549, 0.259),
    vec3(0.482, 0.776, 0.482),
    vec3(0.667, 0.889, 0.615),
    vec3(1.000, 1.000, 0.710)       
 );
 #endif

  #if (GBPreset == 4) //15 Color
 int paletteSize = 15;
 vec3[] palette = vec3[15] ( 
    vec3(0.078, 0.078, 0.098),
    vec3(0.224, 0.184, 0.278),
    vec3(0.400, 0.282, 0.318),
    vec3(0.647, 0.365, 0.322),
    vec3(0.847, 0.447, 0.447),
    vec3(0.949, 0.604, 0.502),
    vec3(1.000, 0.890, 0.357),
    vec3(1.000, 1.000, 0.933),
    vec3(0.318, 0.353, 0.557),
    vec3(0.325, 0.498, 0.231),
    vec3(0.502, 0.510, 0.494),
    vec3(0.522, 0.671, 0.867),
    vec3(0.643, 0.859, 0.447),
    vec3(1.000, 0.749, 0.988),
    vec3(0.812, 0.933, 0.969)
 );
 #endif

 #if (GBPreset == 5) //Kirby (Eleanor)
 int paletteSize = 7;
 vec3[] palette = vec3[7] ( 
    vec3(0.455, 0.337, 0.608),
	vec3(0.388, 0.288, 0.519),
    vec3(0.588, 0.984, 0.780),
    vec3(0.969, 1.000, 0.682),
    vec3(1.000, 0.702, 0.796),
	vec3(0.527, 0.390, 0.704),
    vec3(0.847, 0.749, 0.847)       
 );
 #endif

 #if (GBPreset == 6) //Kirby's Dreamland
 int paletteSize = 7;
 vec3[] palette = vec3[7] ( 
    vec3(0.173, 0.173, 0.588),
	vec3(0.134, 0.134, 0.457),
    vec3(0.206, 0.206, 0.704),
    vec3(0.467, 0.200, 0.906),
    vec3(0.906, 0.525, 0.525),
	vec3(0.815, 0.473, 0.473),
	vec3(0.969, 0.745, 0.969)     
 );
 #endif

#if (GBPreset == 7) //Burnt GB
 int paletteSize = 5;
 vec3[] palette = vec3[5] ( 
    vec3(0.486, 0.247, 0.345),
    vec3(0.383, 0.194, 0.272),
	vec3(0.922, 0.420, 0.435),
    vec3(0.976, 0.659, 0.459),
	vec3(1.000, 0.965, 0.827)     
 );
 #endif

 #if (GBPreset == 8) //Stormy
 int paletteSize = 6;
 vec3[] palette = vec3[6] ( 
    vec3(1.000, 1.000, 1.000),
    vec3(0.300, 0.330, 0.550),
    vec3(0.404, 0.447, 0.663),
    vec3(0.459, 0.508, 0.753),
	vec3(0.227, 0.196, 0.467),
	vec3(0.000, 0.000, 0.000)     
 );
 #endif

 #if (GBPreset == 9) //Patriot
 int paletteSize = 6;
 vec3[] palette = vec3[6] ( 
	vec3(0.298, 0.110, 0.176),
	vec3(0.247, 0.091, 0.146),
	vec3(0.082, 0.134, 0.222),
	//vec3(0.630, 0.180, 0.234),
    vec3(0.824, 0.235, 0.306),
    vec3(0.373, 0.694, 0.961),
	vec3(0.918, 0.961, 0.980)   
 );
 #endif

 #if (GBPreset == 10) //SLS08
 int paletteSize = 8;
 vec3[] palette = vec3[8] ( 
    vec3(0.051, 0.169, 0.271),
	vec3(0.125, 0.235, 0.337),
    vec3(0.329, 0.306, 0.408),
    vec3(0.553, 0.412, 0.478),
    vec3(0.816, 0.506, 0.349),
	vec3(1.000, 0.667, 0.369),
    vec3(1.000, 0.831, 0.639),
    vec3(1.000, 0.925, 0.839)       
 );
 #endif

#if (GBPreset == 11) //JMP16
 int paletteSize = 16;
 vec3[] palette = vec3[16] ( 
    vec3(0.000, 0.000, 0.000),
	vec3(0.098, 0.063, 0.157),
    vec3(0.275, 0.686, 0.271),
    vec3(0.631, 0.839, 0.522),
    vec3(0.271, 0.243, 0.471),
	vec3(0.463, 0.392, 0.996),
    vec3(0.514, 0.192, 0.161),
    vec3(0.620, 0.761, 0.910),
    vec3(0.863, 0.325, 0.294),
	vec3(0.882, 0.553, 0.475),
    vec3(0.839, 0.725, 0.482),
    vec3(0.914, 0.847, 0.631),
    vec3(0.129, 0.413, 0.424),
	vec3(0.827, 0.396, 0.784),
    vec3(0.686, 0.667, 0.725),
    vec3(0.961, 0.957, 0.922)        
 );
 #endif

 #if (GBPreset == 12) //Pokemon GBA
 int paletteSize = 6;
 vec3[] palette = vec3[6] ( 
    vec3(0.094, 0.063, 0.063),
    vec3(0.185, 0.123, 0.123),
	vec3(0.518, 0.451, 0.612),
	vec3(0.397, 0.346, 0.469),
    vec3(0.969, 0.710, 0.549),
    vec3(1.000, 0.937, 1.000)    
 );
 #endif

 #if (GBPreset == 13) //Sweet 16
 int paletteSize = 16;
 vec3[] palette = vec3[16] ( 
    vec3(0.102, 0.110, 0.173),
	vec3(0.365, 0.153, 0.365),
    vec3(0.694, 0.243, 0.325),
    vec3(0.937, 0.490, 0.341),
    vec3(1.000, 0.804, 0.459),
	vec3(0.655, 0.941, 0.439),
    vec3(0.220, 0.718, 0.392),
    vec3(0.145, 0.443, 0.475),
    vec3(0.161, 0.212, 0.435),
	vec3(0.231, 0.365, 0.788),
    vec3(0.255, 0.651, 0.965),
    vec3(0.451, 0.937, 0.969),
    vec3(0.957, 0.957, 0.957),
	vec3(0.580, 0.690, 0.761),
    vec3(0.337, 0.424, 0.525),
    vec3(0.200, 0.235, 0.341)        
 );
 #endif

  #if (GBPreset == 14) //Commodore 64
 int paletteSize = 16;
 vec3[] palette = vec3[16] ( 
    vec3(0.200, 0.200, 0.200),
	vec3(0.120, 0.120, 0.120),
    vec3(0.482, 0.482, 0.482),
    vec3(0.698, 0.698, 0.698),
    vec3(1.000, 1.000, 1.000),
	vec3(0.506, 0.200, 0.220),
    vec3(0.769, 0.424, 0.443),
    vec3(0.333, 0.220, 0.000),
    vec3(0.557, 0.314, 0.161),
	vec3(0.929, 0.945, 0.443),
    vec3(0.663, 1.000, 0.624),
    vec3(0.337, 0.675, 0.302),
    vec3(0.459, 0.808, 0.784),
	vec3(0.439, 0.427, 0.922),
    vec3(0.180, 0.173, 0.608),
    vec3(0.557, 0.235, 0.592)       
 );
 #endif

 #if (GBPreset == 15) //SHELTZY 32
 int paletteSize = 32;
 vec3 palette[] = vec3[32](
	vec3(0.549, 1.000, 0.871),
	vec3(0.271, 0.722, 0.702),
	vec3(0.514, 0.592, 0.251),
	vec3(0.788, 0.925, 0.522),
	vec3(0.275, 0.776, 0.341),
	vec3(0.824, 0.537, 0.408),
	vec3(0.173, 0.357, 0.427),
	vec3(0.133, 0.165, 0.361),
	vec3(0.337, 0.416, 0.537),
	vec3(0.545, 0.671, 0.749),
	vec3(0.800, 0.886, 0.882),
	vec3(1.000, 0.859, 0.647),
	vec3(0.800, 0.675, 0.408),
	vec3(0.639, 0.427, 0.243),
	vec3(0.408, 0.235, 0.204),
	vec3(0.000, 0.000, 0.000),
	vec3(0.220, 0.000, 0.173),
	vec3(0.400, 0.231, 0.576),
	vec3(0.545, 0.447, 0.871),
	vec3(0.612, 0.847, 0.988),
	vec3(0.369, 0.588, 0.867),
	vec3(0.224, 0.325, 0.753),
	vec3(0.502, 0.471, 0.325),
	vec3(0.765, 0.294, 0.569),
	vec3(1.000, 0.580, 0.702),
	vec3(0.741, 0.122, 0.247),
	vec3(0.925, 0.380, 0.290),
	vec3(1.000, 0.643, 0.408),
	vec3(1.000, 0.965, 0.682),
	vec3(1.000, 0.855, 0.439),
	vec3(0.957, 0.690, 0.235),
	vec3(1.000, 1.000, 1.000)
);
#endif

#if (GBPreset == 16) //NT1H-26
int paletteSize = 26;
vec3 palette[] = vec3[26](
	vec3(1.0, 1.0, 1.0),
	vec3(0.675, 0.965, 0.576),
	vec3(0.275, 0.776, 0.341),
	vec3(0.0824, 0.537, 0.408),
	vec3(0.133, 0.184, 0.275),
	vec3(0.259, 0.365, 0.412),
	vec3(0.396, 0.565, 0.545),
	vec3(0.561, 0.725, 0.675),
	vec3(0.741, 0.875, 0.8),
	vec3(0.671, 0.82, 0.824),
	vec3(0.545, 0.671, 0.749),
	vec3(0.337, 0.416, 0.537),
	vec3(0.22, 0.227, 0.388),
	vec3(1.0, 0.945, 0.553),
	vec3(0.929, 0.776, 0.376),
	vec3(0.871, 0.6, 0.235),
	vec3(0.761, 0.369, 0.133),
	vec3(0.294, 0.0, 0.231),
	vec3(0.541, 0.0, 0.278),
	vec3(0.737, 0.0745, 0.204),
	vec3(0.894, 0.212, 0.212),
	vec3(1.0, 0.604, 0.439),
	vec3(0.612, 0.847, 0.988),
	vec3(0.369, 0.588, 0.867),
	vec3(0.224, 0.325, 0.753),
	vec3(0.098, 0.0824, 0.498)
);
#endif

#if (GBPreset == 17) //Pastel 15
int paletteSize = 16;
vec3 palette[] = vec3[16](
	vec3(0.988, 0.6, 0.467),
	vec3(0.988, 0.741, 0.565),
	vec3(0.98, 0.902, 0.667),
	vec3(1.0, 0.969, 0.835),
	vec3(0.969, 0.965, 0.651),
	vec3(0.639, 0.851, 0.416),
	vec3(0.502, 0.851, 0.608),
	vec3(0.341, 0.812, 0.788),
	vec3(0.318, 0.753, 0.859),
	vec3(0.439, 0.647, 0.831),
	vec3(0.427, 0.455, 0.812),
	vec3(0.345, 0.267, 0.471),
	vec3(0.045, 0.067, 0.171),
	vec3(0.518, 0.349, 0.788),
	vec3(0.745, 0.341, 0.761),
	vec3(0.871, 0.463, 0.647)
);
#endif

#if (GBPreset == 18) //Mugeneko
int paletteSize = 191;
vec3 palette[] = vec3[191](
	vec3(0.0, 0.0, 0.0),
	vec3(0.718, 0.667, 0.616),
	vec3(0.588, 0.541, 0.494),
	vec3(0.365, 0.322, 0.298),
	vec3(0.478, 0.427, 0.388),
	vec3(0.824, 0.788, 0.753),
	vec3(0.702, 0.553, 0.408),
	vec3(0.612, 0.475, 0.353),
	vec3(0.522, 0.4, 0.298),
	vec3(0.82, 0.459, 0.459),
	vec3(0.851, 0.69, 0.686),
	vec3(0.314, 0.396, 0.486),
	vec3(0.0667, 0.0706, 0.184),
	vec3(0.141, 0.18, 0.282),
	vec3(0.227, 0.29, 0.38),
	vec3(0.271, 0.341, 0.431),
	vec3(0.333, 0.29, 0.282),
	vec3(0.482, 0.435, 0.408),
	vec3(0.729, 0.698, 0.667),
	vec3(0.776, 0.757, 0.733),
	vec3(0.682, 0.639, 0.6),
	vec3(0.58, 0.537, 0.502),
	vec3(0.584, 0.522, 0.482),
	vec3(0.639, 0.604, 0.573),
	vec3(0.459, 0.365, 0.337),
	vec3(0.522, 0.435, 0.396),
	vec3(0.706, 0.682, 0.655),
	vec3(0.882, 0.878, 0.867),
	vec3(0.867, 0.569, 0.569),
	vec3(0.839, 0.816, 0.804),
	vec3(0.345, 0.255, 0.239),
	vec3(0.38, 0.302, 0.278),
	vec3(0.239, 0.2, 0.196),
	vec3(0.0353, 0.0353, 0.102),
	vec3(0.22, 0.184, 0.153),
	vec3(0.773, 0.353, 0.353),
	vec3(0.549, 0.243, 0.267),
	vec3(0.659, 0.298, 0.31),
	vec3(0.647, 0.576, 0.478),
	vec3(0.725, 0.643, 0.549),
	vec3(0.541, 0.392, 0.302),
	vec3(0.357, 0.267, 0.224),
	vec3(0.71, 0.545, 0.4),
	vec3(0.447, 0.329, 0.263),
	vec3(0.624, 0.467, 0.349),
	vec3(0.557, 0.514, 0.467),
	vec3(0.396, 0.384, 0.22),
	vec3(0.51, 0.475, 0.235),
	vec3(0.624, 0.565, 0.255),
	vec3(0.278, 0.345, 0.278),
	vec3(0.361, 0.451, 0.333),
	vec3(0.592, 0.651, 0.475),
	vec3(0.443, 0.557, 0.392),
	vec3(0.455, 0.349, 0.275),
	vec3(0.349, 0.271, 0.227),
	vec3(0.212, 0.259, 0.259),
	vec3(0.616, 0.475, 0.349),
	vec3(0.529, 0.396, 0.294),
	vec3(0.475, 0.337, 0.255),
	vec3(0.424, 0.278, 0.216),
	vec3(0.345, 0.204, 0.173),
	vec3(0.702, 0.647, 0.584),
	vec3(0.643, 0.584, 0.525),
	vec3(0.416, 0.365, 0.333),
	vec3(0.561, 0.502, 0.451),
	vec3(0.278, 0.239, 0.227),
	vec3(0.2, 0.161, 0.157),
	vec3(0.827, 0.745, 0.584),
	vec3(0.776, 0.678, 0.506),
	vec3(0.549, 0.431, 0.302),
	vec3(0.31, 0.243, 0.196),
	vec3(0.706, 0.553, 0.58),
	vec3(0.627, 0.427, 0.455),
	vec3(0.408, 0.29, 0.275),
	vec3(0.522, 0.361, 0.365),
	vec3(0.788, 0.682, 0.71),
	vec3(0.38, 0.514, 0.282),
	vec3(0.447, 0.596, 0.314),
	vec3(0.318, 0.435, 0.251),
	vec3(0.271, 0.376, 0.224),
	vec3(0.882, 0.812, 0.667),
	vec3(0.675, 0.545, 0.349),
	vec3(0.427, 0.322, 0.255),
	vec3(0.267, 0.133, 0.133),
	vec3(0.906, 0.867, 0.765),
	vec3(0.933, 0.925, 0.867),
	vec3(0.651, 0.596, 0.325),
	vec3(0.71, 0.682, 0.357),
	vec3(0.596, 0.51, 0.298),
	vec3(0.314, 0.247, 0.224),
	vec3(0.482, 0.404, 0.271),
	vec3(0.541, 0.478, 0.29),
	vec3(0.518, 0.271, 0.227),
	vec3(0.416, 0.259, 0.224),
	vec3(0.29, 0.31, 0.224),
	vec3(0.349, 0.275, 0.192),
	vec3(0.427, 0.345, 0.22),
	vec3(0.6, 0.314, 0.243),
	vec3(0.718, 0.392, 0.282),
	vec3(0.82, 0.502, 0.357),
	vec3(0.216, 0.176, 0.149),
	vec3(0.38, 0.384, 0.263),
	vec3(0.702, 0.604, 0.408),
	vec3(0.541, 0.494, 0.333),
	vec3(0.459, 0.439, 0.298),
	vec3(0.659, 0.537, 0.369),
	vec3(0.573, 0.443, 0.314),
	vec3(0.522, 0.4, 0.294),
	vec3(0.471, 0.361, 0.278),
	vec3(0.816, 0.725, 0.533),
	vec3(0.745, 0.635, 0.427),
	vec3(0.263, 0.212, 0.18),
	vec3(0.51, 0.569, 0.412),
	vec3(0.4, 0.337, 0.294),
	vec3(0.447, 0.435, 0.341),
	vec3(0.376, 0.286, 0.275),
	vec3(0.596, 0.706, 0.533),
	vec3(0.349, 0.251, 0.247),
	vec3(0.78, 0.678, 0.749),
	vec3(0.667, 0.565, 0.616),
	vec3(0.463, 0.376, 0.376),
	vec3(0.557, 0.451, 0.482),
	vec3(0.322, 0.22, 0.22),
	vec3(0.392, 0.298, 0.298),
	vec3(0.686, 0.804, 0.663),
	vec3(0.824, 0.906, 0.839),
	vec3(0.769, 0.741, 0.6),
	vec3(0.365, 0.286, 0.227),
	vec3(0.604, 0.588, 0.353),
	vec3(0.471, 0.463, 0.278),
	vec3(0.231, 0.329, 0.2),
	vec3(0.192, 0.286, 0.18),
	vec3(0.435, 0.227, 0.216),
	vec3(0.333, 0.204, 0.184),
	vec3(0.384, 0.314, 0.267),
	vec3(0.525, 0.463, 0.388),
	vec3(0.686, 0.667, 0.576),
	vec3(0.643, 0.62, 0.525),
	vec3(0.416, 0.396, 0.333),
	vec3(0.561, 0.537, 0.451),
	vec3(0.278, 0.267, 0.227),
	vec3(0.216, 0.2, 0.149),
	vec3(0.439, 0.459, 0.588),
	vec3(0.341, 0.357, 0.467),
	vec3(0.18, 0.192, 0.278),
	vec3(0.243, 0.259, 0.376),
	vec3(0.561, 0.357, 0.282),
	vec3(0.643, 0.451, 0.333),
	vec3(0.239, 0.224, 0.22),
	vec3(0.647, 0.702, 0.788),
	vec3(0.706, 0.522, 0.392),
	vec3(0.773, 0.596, 0.451),
	vec3(0.161, 0.145, 0.145),
	vec3(0.31, 0.29, 0.282),
	vec3(0.404, 0.384, 0.353),
	vec3(0.675, 0.647, 0.584),
	vec3(0.569, 0.463, 0.243),
	vec3(0.282, 0.529, 0.733),
	vec3(0.624, 0.275, 0.224),
	vec3(0.922, 0.906, 0.871),
	vec3(0.667, 0.6, 0.51),
	vec3(0.878, 0.835, 0.761),
	vec3(0.957, 0.945, 0.882),
	vec3(0.251, 0.251, 1.0),
	vec3(0.502, 0.502, 1.0),
	vec3(0.753, 0.753, 1.0),
	vec3(0.0, 0.0, 1.0),
	vec3(0.902, 0.922, 1.0),
	vec3(0.0706, 0.0627, 0.0627),
	vec3(0.255, 0.286, 0.255),
	vec3(0.31, 0.392, 0.329),
	vec3(0.38, 0.506, 0.443),
	vec3(0.412, 0.329, 0.278),
	vec3(0.435, 0.584, 0.557),
	vec3(0.62, 0.678, 0.686),
	vec3(0.471, 0.408, 0.31),
	vec3(0.561, 0.506, 0.361),
	vec3(0.816, 0.373, 0.157),
	vec3(0.325, 0.267, 0.243),
	vec3(0.459, 0.29, 0.192),
	vec3(0.463, 0.376, 0.345),
	vec3(0.592, 0.396, 0.235),
	vec3(0.71, 0.49, 0.275),
	vec3(0.698, 0.627, 0.6),
	vec3(0.824, 0.776, 0.757),
	vec3(0.851, 0.722, 0.333),
	vec3(0.796, 0.639, 0.271),
	vec3(0.725, 0.545, 0.216),
	vec3(0.902, 0.808, 0.435),
	vec3(0.675, 0.529, 0.459),
	vec3(0.792, 0.737, 0.635)
);
#endif

#if (GBPreset == 19) //Harpy Gaiden
int paletteSize = 119;
vec3 palette[] = vec3[119](
	vec3(0.973, 0.973, 0.973),
	vec3(0.0, 0.0, 0.0),
	vec3(0.69, 0.533, 0.22),
	vec3(0.835, 0.533, 0.608),
	vec3(0.439, 0.514, 0.263),
	vec3(0.847, 0.784, 0.565),
	vec3(0.529, 0.471, 0.271),
	vec3(0.875, 0.71, 0.749),
	vec3(0.71, 0.275, 0.2),
	vec3(0.616, 0.761, 0.42),
	vec3(0.514, 0.176, 0.137),
	vec3(0.788, 0.769, 0.506),
	vec3(0.914, 0.569, 0.506),
	vec3(0.827, 0.396, 0.271),
	vec3(0.925, 0.663, 0.4),
	vec3(0.459, 0.133, 0.133),
	vec3(0.282, 0.0745, 0.0745),
	vec3(0.447, 0.278, 0.0941),
	vec3(0.561, 0.239, 0.322),
	vec3(0.471, 0.42, 0.137),
	vec3(0.533, 0.761, 0.42),
	vec3(0.698, 0.541, 0.267),
	vec3(0.459, 0.259, 0.11),
	vec3(0.69, 0.459, 0.255),
	vec3(0.753, 0.753, 0.345),
	vec3(0.878, 0.878, 0.565),
	vec3(0.753, 0.816, 0.941),
	vec3(0.345, 0.533, 0.816),
	vec3(0.729, 0.659, 0.843),
	vec3(0.451, 0.341, 0.635),
	vec3(0.827, 0.482, 0.357),
	vec3(0.729, 0.306, 0.318),
	vec3(0.557, 0.467, 0.333),
	vec3(0.439, 0.678, 0.729),
	vec3(0.482, 0.388, 0.494),
	vec3(0.843, 0.722, 0.561),
	vec3(0.961, 0.961, 0.961),
	vec3(0.51, 0.267, 0.224),
	vec3(0.678, 0.863, 0.859),
	vec3(0.725, 0.659, 0.733),
	vec3(0.808, 0.467, 0.349),
	vec3(0.322, 0.22, 0.353),
	vec3(0.263, 0.118, 0.0941),
	vec3(0.925, 0.729, 0.584),
	vec3(0.349, 0.286, 0.192),
	vec3(0.604, 0.58, 0.373),
	vec3(0.325, 0.651, 0.486),
	vec3(0.788, 0.78, 0.604),
	vec3(0.584, 0.808, 0.675),
	vec3(0.961, 0.804, 0.322),
	vec3(0.914, 0.604, 0.263),
	vec3(0.263, 0.357, 0.506),
	vec3(0.478, 0.322, 0.439),
	vec3(0.647, 0.475, 0.231),
	vec3(0.557, 0.522, 0.475),
	vec3(0.718, 0.616, 0.678),
	vec3(0.227, 0.145, 0.255),
	vec3(0.863, 0.725, 0.439),
	vec3(0.918, 0.639, 0.502),
	vec3(0.792, 0.761, 0.71),
	vec3(0.369, 0.341, 0.325),
	vec3(0.663, 0.271, 0.106),
	vec3(0.855, 0.447, 0.271),
	vec3(0.98, 0.702, 0.514),
	vec3(0.784, 0.388, 0.216),
	vec3(0.427, 0.106, 0.0471),
	vec3(0.624, 0.392, 0.392),
	vec3(0.839, 0.627, 0.627),
	vec3(0.404, 0.282, 0.125),
	vec3(0.69, 0.655, 0.2),
	vec3(0.847, 0.816, 0.471),
	vec3(0.384, 0.278, 0.259),
	vec3(1.0, 0.29, 0.353),
	vec3(0.741, 0.467, 0.89),
	vec3(1.0, 0.675, 0.706),
	vec3(0.922, 0.749, 0.941),
	vec3(0.557, 0.408, 0.341),
	vec3(0.78, 0.647, 0.553),
	vec3(0.31, 0.224, 0.2),
	vec3(0.357, 0.349, 0.416),
	vec3(0.576, 0.569, 0.635),
	vec3(0.624, 0.302, 0.396),
	vec3(0.827, 0.553, 0.627),
	vec3(0.259, 0.608, 0.494),
	vec3(0.49, 0.784, 0.686),
	vec3(0.384, 0.392, 0.58),
	vec3(0.647, 0.624, 0.812),
	vec3(0.969, 0.969, 0.969),
	vec3(0.212, 0.212, 0.278),
	vec3(0.353, 0.18, 0.247),
	vec3(0.576, 0.494, 0.333),
	vec3(0.796, 0.753, 0.612),
	vec3(0.482, 0.78, 0.286),
	vec3(0.408, 0.282, 0.282),
	vec3(0.973, 0.784, 0.533),
	vec3(0.741, 0.259, 0.427),
	vec3(0.886, 0.506, 0.62),
	vec3(0.812, 0.89, 0.569),
	vec3(1.0, 1.0, 1.0),
	vec3(0.659, 0.314, 0.251),
	vec3(0.337, 0.373, 0.678),
	vec3(0.388, 0.569, 0.341),
	vec3(0.816, 0.549, 0.435),
	vec3(0.573, 0.651, 0.855),
	vec3(0.608, 0.737, 0.514),
	vec3(0.616, 0.494, 0.0745),
	vec3(0.91, 0.769, 0.275),
	vec3(0.804, 0.278, 0.506),
	vec3(0.945, 0.553, 0.722),
	vec3(0.235, 0.475, 0.769),
	vec3(0.545, 0.686, 0.945),
	vec3(0.58, 0.416, 0.294),
	vec3(0.804, 0.647, 0.529),
	vec3(0.537, 0.337, 0.337),
	vec3(0.643, 0.478, 0.459),
	vec3(0.753, 0.624, 0.58),
	vec3(0.227, 0.153, 0.122),
	vec3(0.827, 0.722, 0.561),
	vec3(0.647, 0.471, 0.314)
);
#endif

#if (GBPreset == 20) //Virtual Boy
int paletteSize = 4;
vec3 palette[] = vec3[4](
	vec3(0.941, 0.0, 0.0),
	vec3(0.565, 0.0, 0.0),
	vec3(0.282, 0.0, 0.0),
	vec3(0.0, 0.0, 0.0)
);
#endif

#if (GBPreset == 21) //Steam 16
int paletteSize = 16;
vec3 palette[] = vec3[16](
	vec3(0.129, 0.231, 0.145),
	vec3(0.227, 0.376, 0.29),
	vec3(0.31, 0.467, 0.329),
	vec3(0.631, 0.624, 0.486),
	vec3(0.467, 0.455, 0.31),
	vec3(0.467, 0.361, 0.31),
	vec3(0.376, 0.231, 0.227),
	vec3(0.231, 0.129, 0.216),
	vec3(0.0902, 0.0549, 0.098),
	vec3(0.184, 0.129, 0.231),
	vec3(0.263, 0.227, 0.376),
	vec3(0.31, 0.322, 0.467),
	vec3(0.396, 0.451, 0.549),
	vec3(0.486, 0.58, 0.631),
	vec3(0.627, 0.725, 0.729),
	vec3(0.753, 0.82, 0.8)
);
#endif

const int bayer8p[64] = int[](
  0, 32,  8, 40,  2, 34, 10, 42, /* 8x8 Bayer ordered dithering */
	48, 16, 56, 24, 50, 18, 58, 26, /* pattern. Each input pixel */
	12, 44,  4, 36, 14, 46,  6, 38, /* is scaled to the 0..63 range */
	60, 28, 52, 20, 62, 30, 54, 22, /* before looking in this table */
	 3, 35, 11, 43,  1, 33,  9, 41, /* to determine the action. */
	51, 19, 59, 27, 49, 17, 57, 25,
	15, 47,  7, 39, 13, 45,  5, 37,
	63, 31, 55, 23, 61, 29, 53, 21
);

float dither_factor = 0.5;

const vec2 pixelSizes[10] = vec2[](
	vec2(1.0),
	vec2(2.0),
	vec2(3.0),
	vec2(4.0),
	vec2(5.0),
	vec2(6.0),
	vec2(7.0),
	vec2(8.0),
	vec2(4.0, 2.0),
	vec2(6.0, 3.0)
);

vec2 pixelize(vec2 uv, vec2 pixelSize) {
	vec2 factor = vec2(pixelX, pixelY) / vec2(viewWidth, viewHeight);
	return floor(uv / factor) * factor;
}
vec2 pixelize(vec2 uv, float pixelSize) {
	return pixelize(uv, vec2(pixelX, pixelY));
}

// compares both regular color and bayer-altered color for closest match in the palette and returns it
vec3 pickClosest(vec3 color, vec3 bayerColor) {
	vec3 palcolor = palette[0];
	float dist = distance(color, palcolor);
	int index = 0;
	float tdist;
	
	for(int i = 1; i < paletteSize; i++) {
		palcolor = palette[i];
		tdist = distance(color, palcolor);
		if(tdist < dist) {
			dist = tdist;
			index = i;
		}
		tdist = distance(bayerColor, palcolor);
		if(tdist < dist) {
			dist = tdist;
			index = i;
		}
	}
	return palette[index];
}

vec3 levels(vec3 color, float brightness, float contrast, vec3 gamma) {
	vec3 value = (color - 0.5) * contrast + 0.5;
    #if (GBPreset == 2)
    value = (color - 0.5) * contrast + 0.5;
    #endif
    #if (GBPreset == 3)
    value = (color - 0.5) * contrast + 0.51;
    #endif
    #if (GBPreset == 4)
    value = (color - 0.496) * contrast + 0.49;
    #endif
	#if (GBPreset == 5)
	value = (color - 0.43) * contrast + 0.58;
	#endif
	#if (GBPreset == 6)
	value = (color - 0.52) * contrast + 0.58;
	#endif
	#if (GBPreset == 7)
	value = (color - 0.55) * contrast + 0.62;
	#endif
    #if (GBPreset == 10)
	value = (color - 0.44) * contrast + 0.40;
	#endif
    #if (GBPreset == 11)
	value = (color - 0.556) * contrast + 0.58;
	#endif
    #if (GBPreset == 12)
	value = (color - 0.49) * contrast + 0.49;
	#endif
    #if (GBPreset == 13)
	value = (color - 0.556) * contrast + 0.58;
	#endif
    #if (GBPreset == 14)
	value = (color - 0.556) * contrast + 0.58;
	#endif
    #if (GBPreset == 15)
	value = (color - 0.556) * contrast + 0.58;
	#endif
    #if (GBPreset == 17)
	value = (color - 0.63) * contrast + 0.71;
	#endif
	#if (GBPreset == 20)
	value = (color - 0.52) * contrast + 0.48;
	#endif
	#if (GBPreset == 21)
	value = (color - 0.52) * contrast + 0.52;
	#endif
	value = clamp(value + brightness, 0.0, 1.0);
	return clamp(vec3(pow(abs(value.r), gamma.x),pow(abs(value.g), gamma.y),pow(abs(value.b), gamma.z)), 0.0, 1.0);
}
vec3 levels(vec3 color, float brightness, float contrast, float gamma) { 
	return levels(color, brightness, contrast, vec3(gamma));
}

vec3 dither8x8(vec2 coord, vec3 color, vec2 pixelSize) {
	vec2 pixelCoord = floor((coord * vec2(viewWidth, viewHeight)) / vec2(pixelSize) + 0.5);

	//color = levels(color, 0.3, 1.6, 0.55);

	//color = levels(color, 0.3, 1.5, 0.5);

	color = levels(color, Palette_Brightness, Palette_Contrast, Palette_Gamma);


	pixelCoord = mod(pixelCoord, 8.0);
	int index = int(pixelCoord.x + (pixelCoord.y * 8));
	vec3 bayerColor = (color + (vec3(bayer8p[index]-31)/32.0) * (Pattern_Brightness / 8.0));
    #ifdef Color_Compression
	color = pickClosest(color, bayerColor);
    #else
    color = color * bayerColor;
    #endif

	return color;
}


vec3 dither8x8(vec2 coord, vec3 color, float pixelSize) {
	return dither8x8(coord, color, vec2(pixelX, pixelY));
}