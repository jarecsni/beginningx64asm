icalc.app: icalc.o
	gcc -ggdb -z execstack -o icalc.app icalc.o -no-pie
icalc.o: icalc.asm
	nasm -felf64 -g icalc.asm -l icalc.lst
