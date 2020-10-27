global _start
section .text
_start:
	mov ebx, 1	;start ebx at 1
	mov ecx, 4	;iterations counter saved in ecx
label:
	add ebx, ebx	;double the ebx
	dec ecx			;decrement the counter
	cmp ecx, 0		;compare to see if counter end reached
	jg label		;if still greater than 0 go back to label and loop
	mov eax, 1		;sys_exit call
	int 0x80
