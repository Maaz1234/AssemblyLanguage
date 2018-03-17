;how to add a value to stack and take out

.model small
.stack 100h
.data

.code

main proc
    
    mov ax,'3'
    
    push ax
    
    mov ax,'4'
    push ax
    
    pop ax
    ;pop ax
    
    mov dx,ax
    
    mov ah,2
    int 21h
    
    mov ah,4ch
    int 21h
    
    
main endp
end main
