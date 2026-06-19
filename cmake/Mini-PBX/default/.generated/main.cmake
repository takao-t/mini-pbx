include("${CMAKE_CURRENT_LIST_DIR}/rule.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/file.cmake")

set(Mini_PBX_default_library_list )

# Handle files with suffix (s|as|asm|AS|ASM|As|aS|Asm), for group default-XC8
if(Mini_PBX_default_default_XC8_FILE_TYPE_assemble)
add_library(Mini_PBX_default_default_XC8_assemble OBJECT ${Mini_PBX_default_default_XC8_FILE_TYPE_assemble})
    Mini_PBX_default_default_XC8_assemble_rule(Mini_PBX_default_default_XC8_assemble)
    list(APPEND Mini_PBX_default_library_list "$<TARGET_OBJECTS:Mini_PBX_default_default_XC8_assemble>")

endif()

# Handle files with suffix S, for group default-XC8
if(Mini_PBX_default_default_XC8_FILE_TYPE_assemblePreprocess)
add_library(Mini_PBX_default_default_XC8_assemblePreprocess OBJECT ${Mini_PBX_default_default_XC8_FILE_TYPE_assemblePreprocess})
    Mini_PBX_default_default_XC8_assemblePreprocess_rule(Mini_PBX_default_default_XC8_assemblePreprocess)
    list(APPEND Mini_PBX_default_library_list "$<TARGET_OBJECTS:Mini_PBX_default_default_XC8_assemblePreprocess>")

endif()

# Handle files with suffix [cC], for group default-XC8
if(Mini_PBX_default_default_XC8_FILE_TYPE_compile)
add_library(Mini_PBX_default_default_XC8_compile OBJECT ${Mini_PBX_default_default_XC8_FILE_TYPE_compile})
    Mini_PBX_default_default_XC8_compile_rule(Mini_PBX_default_default_XC8_compile)
    list(APPEND Mini_PBX_default_library_list "$<TARGET_OBJECTS:Mini_PBX_default_default_XC8_compile>")

endif()


# Main target for this project
add_executable(Mini_PBX_default_image_rWRoBDWs ${Mini_PBX_default_library_list})

set_target_properties(Mini_PBX_default_image_rWRoBDWs PROPERTIES
    OUTPUT_NAME "default"
    SUFFIX ".elf"
    ADDITIONAL_CLEAN_FILES "${output_extensions}"
    RUNTIME_OUTPUT_DIRECTORY "${Mini_PBX_default_output_dir}")
target_link_libraries(Mini_PBX_default_image_rWRoBDWs PRIVATE ${Mini_PBX_default_default_XC8_FILE_TYPE_link})

# Add the link options from the rule file.
Mini_PBX_default_link_rule( Mini_PBX_default_image_rWRoBDWs)


