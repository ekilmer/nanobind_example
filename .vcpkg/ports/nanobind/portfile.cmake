# nanobind does not build anything
set(VCPKG_BUILD_TYPE release)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO ekilmer/nanobind
    REF 8aa5104b3f77087e7c2c06fc97231b9b257764b3
    SHA512 a6e48405425db13bfdba6030ce7d12e8a8de466c393f7ceea97b92c774fc34a3939515718ce1f87d3d69b541837bf4695e6cbac81e40916bc7018dc072d36703
    HEAD_REF no-dependency-install
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
