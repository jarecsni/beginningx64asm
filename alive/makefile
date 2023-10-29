alive.app: alive.o
	gcc -o alive.app alive.o -no-pie
alive.o: alive.asm
	nasm -f elf64 -g -F dwarf alive.asm -l alive.lst
