global _start
section .data
	addr db "ali-shah"
section .text
_start:
	mov [addr], byte 'H'
	mov [addr+5], byte '-'
	mov eax, 4		;sys_write call
	mov ebx, 1		;std-out file descriptor
	mov ecx, addr	;bytes to write
	mov edx, 8		;no. of bytes to write
	int 0x80		;interrupt (sys_call)
	mov eax, 1		;sys_write call
	mov ebx, 0		;std-out file descriptor
	int 0x80
