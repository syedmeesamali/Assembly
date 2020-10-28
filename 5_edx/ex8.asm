global _start
_start:
	call func
	mov eax, 1
	mov ebx, 0
	int 0x80

func:
	mov ebp, esp		;Save to base-pointer location of stack-pointer
	sub esp, 2			;reserve 2 bytes from stack
	mov [esp], byte 'H'
	mov [esp+1], byte 'i'
	mov eax, 4		;system_write call
	mov ebx, 1		;stdout file descriptor
	mov ecx, esp	;location of bytes to write
	mov edx, 2		;number of bytes to write
	int 0x80		;perform the system call
	mov esp, ebp	;restore the stack pointer condition
	ret
	

