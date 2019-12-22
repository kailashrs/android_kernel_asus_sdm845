export ARCH="arm64"
export CROSS_COMPILE="/home/kailashrs/5z/aarch64-elf-gcc/bin/aarch64-elf-"
export CCACHE_DIR=/home/kailashrs/5z/ccache
export CC="ccache gcc"
export CXX="ccache g++"
make O=out Z01R_defconfig -j8
make O=out -j8
