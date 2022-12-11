include "./vendor/premake/premake-qt/qt.lua"
include "./vendor/premake/premake_customization/solution_items.lua"

workspace "ApplicationName"
    architecture "x86_64"
    startproject "ApplicationName"

    configurations
	{
		"Debug",
		"Release",
	}

    solution_items
	{
		".editorconfig"
	}

	flags
	{
		"MultiProcessorCompile"
	}

outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

include "ApplicationName"
