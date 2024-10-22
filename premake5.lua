project "ImGui"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    staticruntime "On"

    targetdir ("Binaries/" ..OutputDir.. "/%{prj.name}")
    objdir ("Binaries/Intermediates/" ..OutputDir.. "/%{prj.name}")

    files
    {
        "imconfig.h",
        "imgui.h",
        "imgui.cpp",
        "imgui_draw.cpp",
        "imgui_internal.h",
        "imgui_widgets.cpp",
        "imstb_rectpack.h",
        "imstb_textedit.h",
        "imstb_truetype.h",
        "imgui_tables.cpp",
        "imgui_demo.cpp"
    }

    filter "system:windows"
        systemversion "latest"
    
    filter "configurations:Debug"
        runtime "Debug"
        symbols "On"
 
    filter "configurations:Release"
        runtime "Release"
        optimize "On"
        symbols "On"
