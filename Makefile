all: boot.bin
	qemu-system-x86_64 -fda boot.bin

debug: boot.bin
	qemu-system-x86_64 -fda boot.bin -s -S

boot.bin: boot.asm
	nasm boot.asm -f elf -g -o boot.elf
	ld -Ttext=0x7c00 -m elf_i386 --oformat binary -o boot.bin boot.elf
	#nasm boot.asm -f elf -g -o boot.elf
	# -f bin for directly compiling, then objcopy not needed
	#objcopy -O binary boot.elf boot.bin

clean:
	rm -f boot.bin boot.elf
