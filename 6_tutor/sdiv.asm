section .text
	mov cx, 0
	mov ax, 33
global _start

_start:
	cmp ax, 0
	jle done
	sub ax, 5
	inc cx
	jmp _start
done:
	mov [res], cx		;save ax value (result) to result variable
	mov ecx, msg		;Output message
	mov edx, len		;Length of message
	mov ebx, 1			;STDOUT
	mov eax, 4			;system call number (SYS_OUT)
	int 0x80			;call kernel 
	mov ecx, res		;result value
	mov edx, 1			;length is one byte only
	mov ebx, 1			;Stdout
	mov eax, 4			;system output
	int 0x80
	mov eax, 1			;System exit
	int 0x80			;call kernel

section .data
msg db "The result is: ", 0xA, 0xD
len equ $- msg

section .bss
res resb 1
