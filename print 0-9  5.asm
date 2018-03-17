;program to print from 0-9

.model small
.stack 100h
.data

.code

main proc
    mov cx,10   ;loop 10 times chalana hai 
    
    mov dx,48   ;ascii mein 0 ko 48 kehte hain decimal mein na converter mein dekhlena 
    
    L1:
        mov ah,2 ; ye print horaha hai
        int 21h
        
        inc dx   ; ye increment kar raye hain jese ek baar loop
                 ; chalega phir 49 hojaega jo 1 hota hai
    loop L1
    
    mov ah,4ch   ;ye line hamesha har program mein likhtay hain
    int 21h      ;inse program end hota hai dono lines
    
main endp
end main




