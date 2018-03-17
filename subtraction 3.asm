;program to subtract two number in assembly language

.model small
.stack 100h 
.data

.code

main proc
    mov ah,1
    int 21h
    
    mov bl,al ;overwrite na ho nextinput isleye bl mein karadiya save
    
    mov ah,1
    int 21h
    
    sub al,bl   ; addition mein
    add al,48   ;add al,bl   aur   sub al,48   hojaega bs
    
    mov dl,al ;kiun ke ah wo print karata hai jo dl mein hota hai yaani data register mein
    
    mov ah,2
    int 21h
    
    mov ah,4ch
    int 21h
    
main endp
end main




