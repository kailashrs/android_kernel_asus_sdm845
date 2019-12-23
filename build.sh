export ARCH="arm64"
export CROSS_COMPILE="/home/kailashrs/5z/aarch64-elf-gcc/bin/aarch64-elf-"
export CROSS_COMPILE_ARM32="/home/kailashrs/5z/arm-eabi-gcc/bin/arm-eabi-"
export CC="ccache gcc"
export CXX="ccache g++"
make O=out Z01R_defconfig
make O=out -j8
