;Program to print the input number is equal or not 

.model small
.stack 100h
.data

msg1 db 'Number is equal$'
msg2 db 'Number is not equal$'

.code

main proc  
    mov ax,@data
    mov ds,ax
    
    mov dl,'9'
    
    mov ah,1
    int 21h
    
    cmp al,dl
    je L1         ;ye JUMP EQUAL hai agar comparision equal hua tou ye jump kardega L1 pe
    
    mov dx,offset msg2
    mov ah,9
    int 21h
    
    mov ah,4ch 
    int 21h
    
    L1:
        lea dx,msg1
        mov ah,9
        int 21h
        
        mov ah,4ch
        int 21h
    
main endp
end main



