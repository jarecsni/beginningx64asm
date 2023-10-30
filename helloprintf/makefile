helloprintf.app: helloprintf.o
	gcc -ggdb -z execstack -o helloprintf.app helloprintf.o -no-pie
helloprintf.o: helloprintf.asm
	nasm -felf64 -g helloprintf.asm -l helloprintrf.lst
