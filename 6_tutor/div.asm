section .text
global main
	mov ecx, 4
main:
	add ebx, 4
	dec ecx
	jnz main
	mov eax, 4
	mov ebx, 1
	mov ecx, ebx
	mov edx, 2
	int 0x80
	mov eax, 1
	int 0x80
	
