jump.app: jump.o
	gcc -ggdb -z execstack -o jump.app jump.o -no-pie
jump.o: jump.asm
	nasm -felf64 -g jump.asm -l jump.lst
