hello: hello.o
	#gcc -o hello hello.o -no-pie
	ld -macosx_version_min 10.7.0 -lSystem -o hello hello.o
hello.o: hello.asm
	nasm -f macho64 -g -F dwarf hello.asm -l hello.lst
