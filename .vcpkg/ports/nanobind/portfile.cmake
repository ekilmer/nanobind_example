vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO ekilmer/nanobind
    REF 92706328921be5b63ceeb9e96bdfbfa0ddbe59af
    SHA512 2dc786f115130546078cac03d261678def5c004c7a57c151422a6f68a9878f7649a1a787d73e3114708901a81acb853904499f86a1c493f29bd3a9ee4a4f5ae9
    HEAD_REF add-install-rules
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
    OPTIONS
        -DNB_USE_SUBMODULE_DEPS:BOOL=OFF
        -DNB_TEST:BOOL=OFF
)

vcpkg_cmake_install()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug")

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")
file(INSTALL "${CMAKE_CURRENT_LIST_DIR}/usage" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}")
