;program to print two different strings in two different lines

.model small
.stack 100h
.data 

string1 db 'MAAZ$'
string2 db 'MAQSOOD$'    ;$ ka sign lagega zaroor

.code

main proc
    
    mov ax,@data
    mov ds,ax     ;ye 2 lines data jo initializa karaya usko call krne kien hain
    
    mov dx, offset string1  ; offset string ke phele variable ka address utha laita hai
    mov ah,9  ;9 string ko print karata hai
    int 21h
    
    mov dx,10     ; line change ke leye
    mov ah,2
    int 21h
    
    mov dx,13     ;carraige return ke leye
    mov ah,2
    int 21h
    
    lea dx, string2     ; ye bhi offset ki tarhan hota hai
    mov ah,9
    int 21h
    
    mov ah,4ch
    int 21h
    
    
main endp
end main



