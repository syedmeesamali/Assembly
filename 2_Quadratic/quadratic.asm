.386
.model flat, stdcall
option casemap:none

include \masm32\include\msvcrt.inc
includelib \masm32\lib\msvcrt.lib

include \masm32\include\kernel32.inc
includelib \masm32\lib\kernel32.lib

.data
    p1 BYTE "Enter a value: ", 0
    msga db "%d", 0
    p2 BYTE "Enter b value: ", 0
    msgb db "%d", 0
    p3 BYTE "Enter c value: ", 0
    msgc db "%d", 0
    p4 BYTE "Enter x value: ", 0
    msgx db "%d", 0
    p5 BYTE "Result is: %d", 0
    aval BYTE "a = %d, ", 0
    bval BYTE "b = %d, ", 0
    cval BYTE "c = %d, ", 0
    xval BYTE "x = %d", 0Ah, 0

    vala dd 0
    valb dd 0
    valc dd 0
    valx dd 0
    result1 dd 0
    result2 dd 0
    final dd 0
.code
start:
    push offset p1
    call crt_printf
    add esp, 4

    push offset vala    ;a-val input
    push offset msga
    call crt_scanf
    add esp, 8

    push offset p2
    call crt_printf
    add esp, 4

    push offset valb    ;b-val input
    push offset msgb
    call crt_scanf
    add esp, 8

    push offset p3
    call crt_printf
    add esp, 4

    push offset valc    ;c-val input
    push offset msgc
    call crt_scanf
    add esp, 8

    push offset p4
    call crt_printf
    add esp, 4

    push offset valx    ;x-val input
    push offset msgx
    call crt_scanf
    add esp, 8

    push vala
    push offset aval
    call crt_printf

    push valb
    push offset bval
    call crt_printf

    push valc
    push offset cval
    call crt_printf

    push valx
    push offset xval
    call crt_printf

    mov eax, vala
    mov ebx, valx
    mul bl
    mov ebx, valx
    mul bl
    mov result1, eax

    mov eax, valb
    mov ebx, valx
    mul bl
    mov result2, eax

    mov eax, result1
    mov ebx, result2
    mov eax, ebx
    mov final, eax
    mov eax, final
    mov ebx, valc
    add eax, ebx
    mov final, eax

    push final
    push offset p5
    call crt_printf
    add esp, 8


    invoke ExitProcess, 0
end start