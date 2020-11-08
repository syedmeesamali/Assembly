SYS_EXIT equ	1		;Suitable names for various system calls
SYS_READ equ	3
SYS_WRITE equ	4
STDIN equ	0
STDOUT equ	1

segment .data
	msg1 db "Enter a number (a): ", 0xA, 0xD
	len1 equ $- msg1

	msg2 db "Enter 2nd number (b): ", 0xA, 0xD
	len2 equ $- msg2

	msg3 db "Sum (a+b) is: "
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
	mov ecx, msg1
	mov edx, len1
	int 0x80

	mov eax, SYS_READ
	mov ebx, STDIN
	mov ecx, num1
	mov edx, 2
	int 0x80

	mov eax, SYS_WRITE
	mov ebx, STDOUT
	mov ecx, msg2
	mov edx, len2
	int 0x80

	mov eax, SYS_READ
	mov ebx, STDIN
	mov ecx, num2
	mov edx, 2
	int 0x80

	mov eax, SYS_WRITE
	mov ebx, STDOUT
	mov ecx, msg3
	mov edx, len3
	int 0x80

	;move first num to eax and 2nd to ebx and subtract 0 to make it decimal

	mov eax, [num1]
	sub eax, '0'
	mov ebx, [num2]
	sub eax, '0'
	
	;add eax and ebx
	mul eax, ebx
	add eax, '0'		;convert result to decimal
	mov [res], eax		;more result to memory location with name res
	
	mov eax, SYS_WRITE
	mov ebx, STDOUT
	mov ecx, res
	mov edx, 1
	int 0x80
exit:
	mov eax, SYS_EXIT
	xor ebx, ebx
	int 0x80
