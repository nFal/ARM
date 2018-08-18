Basic baremetal code demonstration for aarch64.

The basic assembly code startup64.s calls a C subroutine that prints "Hello world!". It then prints letters A-Z from a subroutine in assembly itself.

To run, you need qemu-system-aarch64 (ARM aarch64 simulator from the QEMU project) and baremetal gcc ARM toolchain.

qemu-system-aarch64 build steps:

git clone git://git.qemu.org/qemu.git qemu.git
cd qemu.git
./configure --target-list=aarch64-softmmu
make

Baremetal GCC ARM toolchain can be obtained from:

https://releases.linaro.org/components/toolchain/binaries/latest/aarch64-elf/

Both the simulator and gcc binaries are also present in the 'binaries' directory.

To run:

cd aarch64/
make (compiles and links test64.c, startup64.s using the linker script test64.ld; produces test64.elf)
make run (runs test64.elf on qemu-system-aarch64)

Most of the information are from the following pages:
1. https://balau82.wordpress.com/2010/02/28/hello-world-for-bare-metal-arm-using-qemu/
2. https://github.com/freedomtan/aarch64-bare-metal-qemu
3. https://www.bennee.com/~alex/blog/2014/05/09/running-linux-in-qemus-aarch64-system-emulation-mode/
