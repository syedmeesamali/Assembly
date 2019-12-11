.model small
.386
.stack 100h
.data
    num1 db "rohail$"
.code
    main proc
    mov ah,9
    mov dx , offset num1
    mov ah , 2
    int 21h
    main endp
end main