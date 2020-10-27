global _start
_start:
	sub esp, 4		;create 4 byte space on stack
	mov [esp], byte 'A'
	mov [esp+1], byte 'l'
	mov [esp+2], byte 'i'
	mov [esp+3], byte '!'
	mov eax, 4
	mov ebx, 1
	mov ecx, esp
	mov edx, 4
	int 0x80		;interrupt (sys_call)
	mov eax, 1		;sys_write call
	mov ebx, 0		;std-out file descriptor
	int 0x80
