CROSS_PREFIX=aarch64-elf-

all: test64.elf

test64.o: test64.c
	$(CROSS_PREFIX)gcc -c -g $< -o $@

startup64.o: startup64.s
	$(CROSS_PREFIX)as -c -g $< -o $@

test64.elf: test64.o startup64.o
	$(CROSS_PREFIX)ld -Ttest64.ld $^ -o $@

clean:
	rm -f test64.elf startup64.o test64.o

run:
	qemu-system-aarch64 -M virt -cpu cortex-a57 -nographic -kernel test64.elf
