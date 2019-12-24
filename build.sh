export ARCH="arm64"
export PATH="/usr/lib/ccache/bin:$PATH"
export CROSS_COMPILE="ccache /home/kailashrs/5z/aarch64-elf-gcc/bin/aarch64-elf-"
export CROSS_COMPILE_ARM32="ccache /home/kailashrs/5z/arm-eabi-gcc/bin/arm-eabi-"
make O=out Z01R_defconfig
make O=out -j$(nproc --all)
