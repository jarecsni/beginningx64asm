alive.app: alive.o
	gcc -ggdb -z execstack -o alive.app alive.o -no-pie
alive.o: alive.asm
	nasm -felf64 -g alive.asm -l alive.lst
