global _start

section .text
_start:
	mov ecx, 101
	mov ebx, 42
	mov eax, 1
	cmp ecx, 100
	jl skip				;Jump if less than 100
	mov ebx, 13
skip:
	int 0x80
