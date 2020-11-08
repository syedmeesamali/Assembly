section .text
	mov cx, 0
	mov ax, 31
global _start

_start:
	cmp ax, 0
	jle done
	sub ax, 5
	inc cx
	jmp _start
done:
	mov eax, 4
	int 0x80
	mov eax, 1
	int 0x80
	
