set -xe

if [[ -n "${OSX_ARCH}" ]]; then
    DYN=dylib 
else
    DYN=so
fi

make -f Makefile.so CC=${CC}
install -m 644 "levmar.h" "${PREFIX}/include"
install -m 644 "liblevmar.${DYN}.2.2" "${PREFIX}/lib"
ln -s "liblevmar.${DYN}.2.2" "${PREFIX}/lib/liblevmar.${DYN}.2"
ln -s "liblevmar.${DYN}.2" "${PREFIX}/lib/liblevmar.${DYN}"

