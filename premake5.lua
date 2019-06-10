project "ImGui"
	kind "StaticLib"
	language "C++"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir("bin-int/" .. outputdir .. "/%{prj.name}")

	files {
        --"misc/cpp/imgui_stdlib.cpp",
        --"misc/cpp/imgui_stdlib.h",
        --"misc/freetype/imgui_freetype.h",
        --"misc/freetype/imgui_freetype.cpp",
        --"misc/fonts/binary_to_compress_c.cpp",
		"imconfig.h",
        "imgui.cpp",
        "imgui.h",
        "imgui_demo.cpp",
        "imgui_draw.cpp",
        "imgui_internal.h",
        "imgui_widgets.cpp",
        "imstb_rectpack.h",
        "imstb_textedit.h",
        "imstb_truetype.h",
	}

	includedirs {
		"include"
	}

    defines {
        "IMGUI_API=__declspec( dllexport )"
    }

	filter "system:windows"
	systemversion "latest"
	staticruntime "On"
    cppdialect "C++17"

	filter { "system:windows", "configurations:Release" }
	buildoptions "/MT"
