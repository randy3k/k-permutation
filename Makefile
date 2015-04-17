all:
	gcc -O2 -fpic -o k-permutation.o -c k-permutation.c
	gcc -shared -o lib.so -fPIC k-permutation.o
