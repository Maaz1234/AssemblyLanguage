;sum of -42+(100-20)
.model small
.stack 100h
.data

.code

main proc
    
    mov ax,100
    sub ax,20
    sub ax,42
    
    
    mov dx,ax
    
    mov ah,2
    int 21h
    
    mov ah,4ch
    int 21h
    
main endp
end main



