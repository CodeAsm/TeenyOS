
boot: boot.asm
	nasm boot.asm -f bin -o boot.bin
clean:
	rm -f boot.bin
