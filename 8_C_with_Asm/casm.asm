;Online link: https://ideone.com/x4Nu8l

global _start
section .data
	message1: db ' is type1', 10	;10 is simply 0xA or carriage return (CR)
	message1len: equ $-message1		;length for message 1
	message2: db ' is type2', 10
	message2len: equ $-message2
section .text
_start: 
	call initial
	mov ebx, eax	; keep the returne value in the  ebx as the status code 
	mov eax, 1	    ; exit syscall id
	int 0x80	    ; invoke the exit interrupt 

initial:
	push ebp		;Setup the stack frame
	mov ebp, esp	;EBP (base-pointer) now points to the TOP of stack

	push 4			;Total no. of elements
	push 1			;Element or number 1
	push 2			;Element or number 2
	push 3			;Element or number 3
	push 4			;Element or number 4

	call fun1	
	mov esp, ebp	;Preserve the EBP into ESP
	pop ebp			;Free-up EBP for next function
	ret
fun1:
	push ebp
	mov ebp, esp
	lea esi, [ebp+24]
	mov ecx, [esi]
l0:	
	test ecx, ecx
	jz l_end

	lea esi, [esi-4]
	lea edi, [ecx-1]
	or dword [esi], 0x30

	mov eax,0x4
 	mov ebx,0x1
	mov ecx, esi
	mov edx,0x4
	int 0x80

	mov ecx,edi
	mov eax, [esi]
	test eax,0x1
	jnz l2
l1:
	push ecx
	push 0x1
	call fun2
	pop ecx
	pop ecx
	jmp l0
l2:
	push ecx
	push 0x2
	call fun2
	pop ecx
	pop ecx
	jmp l0
l_end:	
	mov esp,ebp
	pop ebp
	ret
fun2:
	push ebp
	mov ebp,esp

	mov ebx, [ebp+8]
	cmp ebx, 1
	jne l3

	mov eax,0x4
	mov ebx,0x1
	mov ecx, message1
	mov edx,message1len
	jmp l_comm
l3:   
	mov eax,0x4
	mov ebx,0x1
	mov ecx, message2
	mov edx, message2len
l_comm:
	int 0x80
	mov esp,ebp
	pop ebp
	ret