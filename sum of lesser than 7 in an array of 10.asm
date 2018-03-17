;sum of less than 7 in array of 10

.model small
.stack 100h
.data

arr db 10,6,7,8,4,3,2,1,5,9,0
sum db 0

.code

main proc
    mov ax,@data
    mov ds,ax
    
    mov si,offset arr
    mov cx,7
    
    L1:
        cmp [si],7
        jge addition
        cmp [si],0
        je stop
        mov al,[si]
        add sum,al
        inc si
        jmp L1
    stop:
        mov dl,sum
        mov ah,2
        int 21h
    
        mov ah,4ch
        int 21h
        
        
    addition:
        inc si
        jmp L1
        
        
    
    
main endp
end main