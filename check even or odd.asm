;to check even and odd a single integer

.model small
.stack 100h
.data



.code

main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,1
    int 21h
    
    mov bx,48
    
    mov dx,49
    
    L1:
        cmp ax,bx
        je even
        
        cmp ax,dx
        je odd
        
        add bx,2
        add dx,2
        
        jmp L1
        
    even:
        mov dx,'e'
        mov ah,2
        int 21h
        
        mov ah,4ch
        int 21h
        
    odd:
        mov dx,'o'
        mov ah,2 
        int 21h
        
        mov ah,4ch
        int 21h
        
main endp
end main
