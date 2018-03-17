;copy str1 to str2

.model small
.stack 100h
.data 

str1 db 'MAAZ MAQSOOD$'
str2 db 20 dup('$')

.code

main proc
    mov ax,@data
    mov ds,ax 
    
    mov cx,11
    mov si,offset str1
    mov di,offset str2
    
    L1: 
        
        mov ax,[si] 
        
        mov [di],ax
        
        inc si
        inc di
        
    loop L1
    
    mov dx,offset str2
    mov ah,9
    int 21h
    
    mov ah,4ch
    int 21h
    
    
main endp
end main
