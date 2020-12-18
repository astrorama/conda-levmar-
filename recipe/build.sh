set -xe

declare -a CMAKE_PLATFORM_FLAGS
if [[ -n "${OSX_ARCH}" ]]; then
    CMAKE_PLATFORM_FLAGS+=(-DCMAKE_OSX_SYSROOT="${CONDA_BUILD_SYSROOT}")
else
    CMAKE_PLATFORM_FLAGS+=(-DCMAKE_TOOLCHAIN_FILE="${RECIPE_DIR}/cross-linux.cmake")
fi

BUILD_DIR="${SRC_DIR}/build"
mkdir -p "${BUILD_DIR}"
cd "${BUILD_DIR}"

# Really make sure we use the generated levmar.h
rm "${SRC_DIR}/levmar.h"

cmake -DCMAKE_INSTALL_PREFIX="${PREFIX}" \
    -DCMAKE_VERBOSE_MAKEFILE:BOOL=ON \
    -DCMAKE_BUILD_TYPE:STRING=RELEASE \
    -DLINSOLVERS_RETAIN_MEMORY:BOOL=OFF -DNEED_F2C:BOOL=OFF \
    ${CMAKE_PLATFORM_FLAGS[@]} \
    ${CMAKE_ARGS} \
    "${SRC_DIR}"


make install ${MAKEFLAGS}

