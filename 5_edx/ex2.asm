global _start
section .data
	msg db "Hello, world", 0x0a
	len equ $ - msg

section .text
_start:
	mov eax, 4			;System write call
	mov ebx, 1			;stdout file descriptor
	mov ecx, msg		;bytes to write
	mov edx, len		;number of bytes to write
	int 0x80			;perform system call
	mov eax, 1
	mov ebx, 0
	int 0x80			;System exit call
