all:
	gcc -O2 -fpic -g -o k-permutation.o -c k-permutation.c
	gcc -O2 -fpic -g -o main.o -c main.c
	gcc -shared -o lib.so -fPIC k-permutation.o
	gcc -g -o main main.c  k-permutation.o
