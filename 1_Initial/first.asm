.386
.model flat, stdcall
option casemap:none

include \masm32\include\msvcrt.inc
includelib \masm32\lib\msvcrt.lib

include \masm32\include\kernel32.inc
includelib \masm32\lib\kernel32.lib

.data
    dob BYTE "17/11/2000", 0Ah, 0
    msg BYTE "Memory address: ",0
    pointer db "%p", 0
    
.code
start:
    push offset dob
    call crt_printf
    add esp, 4
    
    push offset msg
    call crt_printf
    add esp, 4

    push ebx
    push offset pointer
    call crt_printf
    add esp, 4

    invoke ExitProcess, 0
end start