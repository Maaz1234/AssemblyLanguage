 .model small
.stack 100h
.data   

 string db "assembly language"
 number db 0

.code
 main proc  
 mov ax, @data
 mov ds, ax
 
 lea si,string
 mov cx,16
 
 l1:
  
 cmp [si],'a'
 je count
 
 cmp [si],"e"
 je count
 
 cmp [si],"i"
 je count
 
  cmp [si],"o"
 je count
 
  cmp [si],"u"
 je count
  
  inc si
   
   jmp else
   
  count:
  inc number
  inc si
  
  
  else:
 
   loop l1
   
   
 display:
 mov dl,number
 add dl, 48
 mov ah,2
 int 21h   
    
    
main endp
 end main







