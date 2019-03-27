#include <stdio.h>
#include <stddef.h>

int varvar;

//-mgeneral-regs-only
__attribute__((no_caller_saved_registers,used))
static void ___write_mem(unsigned char *addr, size_t size) {
	varvar = 1;
	//printf("Scrittura di %d byte su %p\n", size, addr);
	//puts("Scrittura\n");
	//fflush(stdout);
}

__attribute__((naked))
void __write_mem(void) {
	asm volatile(
		"push %rdi\n"
		"push %rsi\n"
		"movq 4*8(%rsp), %rsi\n"
		"movq 3*8(%rsp), %rdi\n"
		"call ___write_mem\n"
		"pop %rsi\n"
		"pop %rdi\n"
		"ret $16\n"
	);
}

__attribute__((no_caller_saved_registers,used))
void ___read_mem(unsigned char *addr, size_t size) {
	varvar = 2;
//	printf("Lettura di %d byte da %p\n", size, addr);
	//~ puts("Lettura\n");
	//~ fflush(stdout);
}

__attribute__((naked))
void __read_mem(void) {
	asm volatile(
		"push %rdi\n"
		"push %rsi\n"
		"movq 4*8(%rsp), %rsi\n"
		"movq 3*8(%rsp), %rdi\n"
		"call ___read_mem\n"
		"pop %rsi\n"
		"pop %rdi\n"
		"ret $16\n"
	);
}
