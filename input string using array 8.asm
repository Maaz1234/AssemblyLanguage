;program to input a string in an array

.model small
.stack 100h 
.data

string db 100 dup('$')    ;ye duplicates banadeta hai
                          ; $ pe na akay read karna bnd kardeta hai string tou dollar use kara hai jo input hoga wo $ ki jagah ajaega baaki dollar he rahengey 
msg db 'end $'

.code

main proc 
    mov ax,@data
    mov ds,ax
    
    mov si , offset string  ;sae kardiya aunty
    
    
    L1:
    mov ah,1
    int 21h
    
    cmp al,13            ;13 ascii mein enter hota hai tou jb user input karega endprocess mein jakar print hojaege array
    
    je endprocess        ;jump equal tb chalega jb cmp enter ke barabar aye
    
    mov [si],al          ;agar enter ke equal nahi ayega tou neeche ajaengey is line pey
    inc si
    jmp L1               ;ye L1 pe jump karega ek tarah se loop hai
    
    
    
    endprocess:
        lea dx,msg       ; ye mene wese he print karaya hai check karney ke leye ek string
        mov ah,9
        int 21h
        
        lea dx,string    ;ye input waali string print kara hai 
        mov ah,9
        int 21h
        
        
        mov ah,4ch
        int 21h
        
    
main endp
end main