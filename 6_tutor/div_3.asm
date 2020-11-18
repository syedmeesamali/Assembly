SYS_EXIT equ	1		;Suitable names for various system calls
SYS_READ equ	3
SYS_WRITE equ	4
STDIN equ	0
STDOUT equ	1

segment .data
	msg1 db "Enter dividend: ", 0xA, 0xD
	len1 equ $- msg1

	msg2 db "Enter divisor: ", 0xA, 0xD
	len2 equ $- msg2

	msg3 db "Result is: "
	len3 equ $- msg3

segment .bss
	num1 resb 2
	num2 resb 2
	res resb 1
section .text
	global main

main:				;entry point for linker
	mov eax, SYS_WRITE
	mov ebx, STDOUT
	mov ecx, msg1			;Ask for number - 1 : Dividend
	mov edx, len1
	int 0x80

	mov eax, SYS_READ
	mov ebx, STDIN
	mov ecx, num1			;Save number-1 to num1 variable
	mov edx, 2
	int 0x80

	mov eax, SYS_WRITE
	mov ebx, STDOUT
	mov ecx, msg2			;Ask for number - 1 : Divisor
	mov edx, len2
	int 0x80

	mov eax, SYS_READ
	mov ebx, STDIN
	mov ecx, num2			;Save number-2 to num2 variable
	mov edx, 2
	int 0x80

	;Main division algorithm if it works
	
	mov cx, 0
	mov ax, 22
divisions:
	cmp ax, 0
	jle finish
	sub ax, 4
	inc cx
	jmp divisions
finish:
	mov [res], ecx
	mov eax, SYS_WRITE
	mov ebx, STDOUT
	mov ecx, msg3			;Output the result message
	mov edx, len3
	int 0x80

	mov eax, SYS_WRITE
	mov ebx, STDOUT
	mov ecx, res			;Output the actual result
	mov edx, 1
	int 0x80
	
	mov eax, SYS_EXIT
	xor ebx, ebx
	int 0x80
