betterloop.app: betterloop.o
	gcc -ggdb -z execstack -o betterloop.app betterloop.o -no-pie
betterloop.o: betterloop.asm
	nasm -felf64 -g betterloop.asm -l betterloop.lst
