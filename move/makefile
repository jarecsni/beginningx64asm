move.app: move.o
	gcc -ggdb -z execstack -o move.app move.o -no-pie
move.o: move.asm
	nasm -felf64 -g move.asm -l move.lst
