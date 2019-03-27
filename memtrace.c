#include <stdio.h>
#include <stddef.h>

int varvar;

//-mgeneral-regs-only
__attribute__((no_caller_saved_registers,used))
void __write_mem(unsigned char *addr, size_t size) {
	varvar = 1;
	printf("Write at address %p of size %lu\n", addr, size);
	//printf("Scrittura di %d byte su %p\n", size, addr);
	//puts("Scrittura\n");
	//fflush(stdout);
}

__attribute__((no_caller_saved_registers,used))
void __read_mem(unsigned char *addr, size_t size) {
	varvar = 2;
	printf("Read at address %p of size %lu\n", addr, size);
//	printf("Lettura di %d byte da %p\n", size, addr);
	//~ puts("Lettura\n");
	//~ fflush(stdout);
}

