section .data
  msg db '/bin/sh'  ; db stands for define byte, msg will now be a string pointer

section .txt
  global _start     ; needed for comipler, comparable to int main()

_start:
  mov eax, 11       ; eax = 11, [destination], [source] - 11 is execve
  mov ebx, msg      ; load the string pointer into ebx
  mov ecx, 0        ; no arguments in ecx
  int 0x80          ; syscall

  mov eax, 1        ; exit syscall
  mov ebx, 0        ; no errors
  int 0x80          ; syscall
