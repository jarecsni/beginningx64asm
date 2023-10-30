helloprintf.app: helloprintf.o
	gcc -ggdb -z execstack -o helloprintf.app helloprintf.o -no-pie
	#ld --entry main -m elf_x86_64 -o helloprintf.app helloprintf.o
helloprintf.o: helloprintf.asm
	nasm -felf64 -g helloprintf.asm -l helloprintrf.lst
