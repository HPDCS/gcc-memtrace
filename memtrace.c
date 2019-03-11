#include <stdio.h>

//void dirty_mem(unsigned char *addr, size_t size) {
void dirty_mem(void) {
	printf("Chiamata\n");
	fflush(stdout);
}
