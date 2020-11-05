section 	.text
	global main
main:
	mov ax, 9h
	and ax, 1
	jz evnn
	mov eax, 4			;system write
	mov ebx, 1			;stdout
	mov ecx, odd_msg	;message to write
	mov edx, len2		;length of message 2
	int 0x80
	jmp outprog
evnn:
	mov ah, 09h
	mov eax, 4			;system write
	mov ebx, 1			;stdout
	mov ecx, even_msg	;message to write
	mov edx, len1		;length of message 1
	int 0x80
outprog:
	mov eax, 1
	int 0x80

section 	.data
even_msg db "Even number!"
len1 equ $ - even_msg
odd_msg db "Odd number!"
len2 equ $ - odd_msg
	
