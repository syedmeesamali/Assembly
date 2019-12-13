.386
.model flat, stdcall
option casemap:none

include \masm32\include\msvcrt.inc
includelib \masm32\lib\msvcrt.lib

include \masm32\include\kernel32.inc
includelib \masm32\lib\kernel32.lib

.data
    dataMessage BYTE "17/11/2000", 0Ah, 0
    msg BYTE "Memory address: ",0
    newLine BYTE " ", 0Ah, 0
    valx dd 0
    tmp dd 0        ;dword for part of string
    
.code
start:
    push offset dataMessage
    call crt_printf

    add esp, 4
    mov eax, esp
    mov valx, eax

    push offset msg
    call crt_printf

    push offset valx
    call crt_printf

    push offset newLine
    call crt_printf

    mov esi,offset dataMessage    ;ESI = Source
    mov edi,offset tmp     ;EDI = Destination
    add esi,5                ;Skip first letter
    inc esi                ;Skip first letter
    lodsb                  ;Load byte from ESI to AL
    stosb                  ;Store AL in EDI
    mov tmp, eax
    push offset tmp
    call crt_printf

    mov esi,offset dataMessage    ;ESI = Source
    mov edi,offset tmp     ;EDI = Destination
    add esi,6                ;Skip first letter
    inc esi                ;Skip first letter
    lodsb                  ;Load byte from ESI to AL
    stosb                  ;Store AL in EDI
    mov tmp, eax
    push offset tmp
    call crt_printf

    mov esi,offset dataMessage    ;ESI = Source
    mov edi,offset tmp     ;EDI = Destination
    add esi,7                ;Skip first letter
    inc esi                ;Skip first letter
    lodsb                  ;Load byte from ESI to AL
    stosb                  ;Store AL in EDI
    mov tmp, eax
    push offset tmp
    call crt_printf

    mov esi,offset dataMessage    ;ESI = Source
    mov edi,offset tmp     ;EDI = Destination
    add esi,8                ;Skip first letter
    inc esi                ;Skip first letter
    lodsb                  ;Load byte from ESI to AL
    stosb                  ;Store AL in EDI
    mov tmp, eax
    push offset tmp
    call crt_printf


    invoke ExitProcess, 0
end start