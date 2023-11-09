jumploop.app: jumploop.o
	gcc -ggdb -z execstack -o jumploop.app jumploop.o -no-pie
jumploop.o: jumploop.asm
	nasm -felf64 -g jumploop.asm -l jumploop.lst
