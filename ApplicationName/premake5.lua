local qt = premake.extensions.qt

project "ApplicationName"
    kind "WindowedApp"
	language "C++"
    cppdialect "C++20"
    staticruntime "off"

    targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
    objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

    pchheader "pch.h"
    pchsource "src/private/pch.cpp"

    files
    {
        "src/**.h",
        "src/**.cpp",
    }

    includedirs
    {
        "src/public",
    }

    links
    {
    }

    buildoptions
    {
        "/Zc:__cplusplus"
    }

    linkoptions
    {
        "/ENTRY:\"mainCRTStartup\""
    }

    qt.enable()
    qtprefix "Qt6"

    qtmodules
    {
        "core",
        "gui",
        "widgets",
    }

	filter "system:windows"
        systemversion "latest"
        defines "PLATFORM_WINDOWS"

	filter "configurations:Debug"
        defines "DEBUG"
        runtime "Debug"
		symbols "on"
        qtsuffix "d"

	filter "configurations:Release"
		defines "RELEASE"
		runtime "Release"
		optimize "on"
