export ARCH="arm64"
export PATH="/usr/lib/ccache/bin:$PATH"
export CROSS_COMPILE="ccache /home/kailashrs/5z/aarch64-elf-gcc/bin/aarch64-elf-"
export CROSS_COMPILE_ARM32="ccache /home/kailashrs/5z/arm-eabi-gcc/bin/arm-eabi-"
make O=out Z01R_defconfig
make O=out -j$(nproc --all)
cd ..
cd AnyKernel3
rm zImage
rm dtbo.img
rm kangbang.zip
python2 /home/kailashrs/5z/mkdtboimg.py create dtbo.img /home/kailashrs/5z/android_kernel_asus_sdm845/out/arch/arm64/boot/dts/qcom/*.dtbo
cp /home/kailashrs/5z/android_kernel_asus_sdm845/out/arch/arm64/boot/Image.gz-dtb zImage
zip -r kangbang.zip *
