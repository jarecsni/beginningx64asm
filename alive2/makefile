alive.app: alive.o
	gcc -ggdb -z execstack -o alive.app alive.o -no-pie
	#ld --entry main -m elf_x86_64 -o alive.app alive.o
alive.o: alive.asm
	nasm -felf64 -g alive.asm -l alive.lst
