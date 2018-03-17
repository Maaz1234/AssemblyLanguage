

 org 100h

.data

.code
main proc
    
mov ah,01h
int 21h 

mov bl,al
and bl,11011111b

mov dl,bl
mov ah,02h
int 21h

mov ah,01h
int 21h

mov bl,al
or bl,00100000b
mov dl,bl

mov ah,02h
int 21h

    
    
    
main endp
end main



