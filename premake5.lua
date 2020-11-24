project "FastNoise"
    kind "StaticLib"
    language "C++"
    staticruntime "on"
	
	outputDirectory = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"
	
	targetdir ("Bin/" .. outputDirectory .. "/%{prj.name}")
	objdir ("Bin-Int/" .. outputDirectory .. "/%{prj.name}")
	
    files
    {
        "include/FastNoise/FastNoise.h",
        "src/FastNoise.cpp",
    }

    includedirs
    {
        "include"
    }
    
    filter "system:windows"
		systemversion "latest"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

	filter "configurations:Dist"
		runtime "Release"
		optimize "on"