Basic baremetal code demonstration for aarch64.

The basic assembly code calls a C subroutine, that prints "Hello world!". It then prints letters A-Z from a subroutine in assembly.

To run you need qemu-system-aarch64 (ARM simulator from the QEMU project) and the gcc ARM toolchain.

The makefile default target compiles and links the assembly and C files and generates the ARM elf. Execute "make run" after that to run it on the simulator.  
