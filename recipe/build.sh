set -xe

if [[ -n "${OSX_ARCH}" ]]; then
    DYN=dylib 
else
    DYN=so
fi

make -f Makefile.so CC=${CC}
install -m 644 -t "${PREFIX}/include" -D "levmar.h"
install -m 644 -t "${PREFIX}/lib" -D "liblevmar.${DYN}.2.2"
ln -s "liblevmar.${DYN}.2.2" "${PREFIX}/lib/liblevmar.${DYN}.2"
ln -s "liblevmar.${DYN}.2" "${PREFIX}/lib/liblevmar.${DYN}"

