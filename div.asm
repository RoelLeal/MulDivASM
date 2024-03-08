section .bss
resultado resb 1
section .text
    global _start
_start:

mov ax, 3
mov cx, 3

mul cx

add ax, 48

mov [resultado], ax

mov eax, 4
mov ebx, 1
mov ecx, resultado
mov edx, 1 ;numero de bytes
int 0x80
; TERMINADO CON EXITO
mov eax, 1
mov ebx, 0
int 0x80