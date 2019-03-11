#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int global;
int *heap;

char src[4096];
char dst[4096];

struct foo {
	int a;
	int b;
	int c;
	int d;
	int e;
	int f;
	int g;
	int h;
	int i;
	int j;
	int k;
	int l;
};

struct foo str_src;
struct foo str_dst;

static inline void dummy_asm(void) {
	asm volatile ("xchgl %eax, %eax");
}

static inline void *_memset(void *s, char c, size_t count)
{
     int d0, d1;
     __asm__ __volatile__(
             "rep stosb"
             : "=&c" (d0), "=&D" (d1)
             :"a" (c),"1" (s),"0" (count)
             :"memory");
     return s;
}

static inline void *_memcpy(void *d, const void *s, size_t n) {
	asm volatile ("rep movsb"
       	 	     : "=D" (d), "=S" (s), "=c" (n)
	             : "0" (d), "1" (s), "2" (n)
        	     : "memory");
	return d;
}

void struct_cpy(struct foo *dst, struct foo src) {
	memcpy(dst, &src, sizeof(struct foo));
}

int main(int argc, char **argv) {
	int stack;

	if(argc < 2) {
		fprintf(stderr, "Usage: %s int\n", argv[0]);
		exit(EXIT_FAILURE);
	}


	stack = atoi(argv[1]);

	global = stack;

	heap = malloc(sizeof(int));
	*heap = stack;

	_memset(src, (char)stack, 4096);
	_memcpy(dst, src, 4096);

	dummy_asm();

	str_src.a = str_src.b = str_src.c = str_src.d = str_src.e = str_src.f = str_src.g = str_src.h = str_src.i = str_src.j = str_src.k = str_src.l = stack;
	struct_cpy(&str_dst, str_src);

	printf("global: %d\n", global);
	printf("heap: %d\n", *heap);
	printf("stack: %d\n", stack);
}

