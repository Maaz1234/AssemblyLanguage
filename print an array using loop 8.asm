;Program to print an array using loop

.model small
.stack 100h
.data

array db 'a','b','c'   ;array aise initialize karengey
; array db 'abc'       ;aisay bhi karsaktay hain

.code

main proc
    mov ax,@data
    mov ds,ax
    
    mov si,offset array ;si source index hota hai na
                    ;tou offset se uske andar phela address save kardia array ka
    
    mov cx,3     ; ye loop counter
    
    L1:
        mov dx,[si]   ;si address hold karta hai par [si] address
        mov ah,2      ; ki value hold karta hai
        
        int 21h
        
        inc si         ; increment si
        
    loop L1
    
    mov ah,4ch
    int 21h
    
main endp
end main


