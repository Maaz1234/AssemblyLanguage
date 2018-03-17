;program to copy two different strings in a single string

.model small
.stack 100h
.data

str1 db 'MAAZ $'
str2 db 'MAQSOOD$'
str3 db 20 dup ('$')

.code

main proc
    mov ax,@data
    mov ds,ax
    
    ;mov cx,5
    mov si,offset str1
    mov di,offset str3
    
    L1:
        cmp [si],36
        je copy
        
        mov ax,[si]
        mov [di],ax
        inc si
        inc di
        
        jmp l1    
    
     copy:
        mov si,offset str2
        mov cx,7
        
        L2:
            mov ax,[si]
            mov [di],ax
            inc si
            inc di
        loop L2
        
        mov dx,offset str3
        mov ah,9
        int 21h
        
        mov ah,4ch
        int 21h  
    
main endp
end main