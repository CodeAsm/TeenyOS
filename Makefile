debug: boot.bin
	qemu-system-x86_64 -fda boot.bin -s -S
	
all: boot.bin
	qemu-system-x86_64 -fda boot.bin 

boot.bin: boot.asm
	nasm boot.asm -f elf -g -o boot.bin
	# -f bin for directly compiling, then objcopy not needed
	objcopy -O object boot.elf boot.bin

clean:
	rm -f boot.bin boot.elf
