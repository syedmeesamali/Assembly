global _start
section .text
_start:
	mov ebx, 42		;Exit status is 42
	mov eax, 1		;system exit system call
	jmp skip		;jump to a label called as skip
	mov ebx, 13		;Exit status is 13
skip:
	int 0x80
