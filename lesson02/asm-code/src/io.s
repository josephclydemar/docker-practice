section .data
    lbrac: db 0x5b ; [
    rbrac: db 0x5d ; ]
    nline: db 0x0a ; \n

section .text
    global _write
    global _write_lbrac
    global _write_rbrac
    global _write_nline



_write:
    mov rax, 0x01
    mov rdi, 0x01 ; stdout
    mov rsi, rbx  ; address of buffer
    mov rdx, rcx  ; size
    syscall
    ret

_write_lbrac:
    mov rbx, lbrac
    mov rcx, 0x01
    call _write
    ret

_write_rbrac:
    mov rbx, rbrac
    mov rcx, 0x01
    call _write
    ret

_write_nline:
    mov rbx, nline
    mov rcx, 0x01
    call _write
    ret


