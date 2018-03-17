;program to take an input than print it
.model small
.stack 100h
.data

.code 

main proc  
    
    mov ah,1  ;1 input ke leye
    int 21h
    
    mov dl,al  ;because ah jo dl mein hota hai wo print karta hai
    mov ah,2
    int 21h
    
    mov ah,4ch   ; 2 output ke leye
    int 21h
    
    
main endp
end main




