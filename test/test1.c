#include <stddef.h>
#include <math.h>
#include <stdio.h>

volatile int variable;

/*void dirty_mem(void *addr, size_t size) {
	(void)addr;
	(void)size;
}*/

int main(int argc, char **argv) {
//	printf("variable at %p\n", &variable);
//	dirty_mem(&variable, sizeof(variable));
//	__write_mem(&variable, sizeof(variable));
	variable = argc;

	return 0;
}
