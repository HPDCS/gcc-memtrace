#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define unlikely(exp) __builtin_expect(exp, 0)

int global;
int *heap;

char src[4096];
char dst[4096];


void foo (unsigned char stack, int n){
	printf("global: %d\n", global);
	printf("heap: %d\n", *heap);
	printf("stack: %d\n", stack);
	printf("n: %d\n", n);
	return;
}

int main(int argc, char **argv) {
	unsigned char stack;

	if(argc < 2) {
		fprintf(stderr, "Usage: %s int\n", argv[0]);
		exit(EXIT_FAILURE);
	}

	stack = (unsigned char)atoi(argv[1]);

	global = stack;

	heap = malloc(sizeof(int));
	*heap = stack;

	__builtin_memset(&src, stack, sizeof(src));
	__builtin_memcpy(&dst, &src, sizeof(dst));

	if(unlikely(stack == 0))
		stack = 1;

	foo(stack, 2);

}

