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
    "${SRC_DIR}"


make ${MAKEFLAGS}

mkdir -p "${PREFIX}/include/" "${PREFIX}/lib/" "${PREFIX}/bin/"
install -m 644 "${SRC_DIR}/levmar.h" "${PREFIX}/include/"

if [[ -n "${OSX_ARCH}" ]]; then
    install -m 644 "liblevmar.2.6.dylib" "${PREFIX}/lib"
    install -m 644 "liblevmar.dylib" "${PREFIX}/lib"
else
    install -m 644 "liblevmar.so.2.6" "${PREFIX}/lib/"
    ln -s "liblevmar.so.2.6" "${PREFIX}/lib/liblevmar.so.2"
    ln -s "liblevmar.so.2" "${PREFIX}/lib/liblevmar.so"
fi

install -m 755 "lmdemo" "${PREFIX}/bin"
