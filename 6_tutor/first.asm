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
