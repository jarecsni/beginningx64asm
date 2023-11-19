memory.app: memory.o
	gcc -ggdb -z execstack -o memory.app memory.o -no-pie
memory.o: memory.asm
	nasm -felf64 -g memory.asm -l memory.lst
