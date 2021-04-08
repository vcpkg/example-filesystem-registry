vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO northwindtraders/beison
  REF 1920a0411fc48f1e805f0001e6a0975865217b70
  SHA512 a3ad804f00e3deecef16c76d5c8355a0a727579145de210def8be64b775ec247477ec58d01bbdc233d467626eed2caf7048c60c147c7177cf8bb5d59add0c99a
  HEAD_REF main
)

vcpkg_configure_cmake(
  SOURCE_PATH "${SOURCE_PATH}"
  PREFER_NINJA
)
vcpkg_install_cmake()
vcpkg_fixup_cmake_targets()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

file(
  INSTALL "${SOURCE_PATH}/LICENSE"
  DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}"
  RENAME copyright)
