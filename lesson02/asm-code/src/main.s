section .data
    msg1: db 0x41, 0x42, 0x43, 0x44, 0x45
    msg2: db 0x48, 0x65, 0x6C, 0x6C, 0x6F, 0x21
    msg3: db 0x47, 0x6F, 0x6F, 0x64, 0x20, 0x6A, 0x6F, 0x62, 0x21
    msg4: db 0x54, 0x68, 0x61, 0x6E, 0x6B, 0x73, 0x21

section .bss

section .text
    global _start

    extern _write
    extern _write_lbrac
    extern _write_rbrac
    extern _write_nline


_start:
    call _write_lbrac
    mov rbx, msg1
    mov rcx, 0x05
    call _write
    call _write_rbrac
    call _write_nline

    call _write_lbrac
    mov rbx, msg2
    mov rcx, 0x06
    call _write
    call _write_rbrac
    call _write_nline

    call _write_lbrac
    mov rbx, msg3
    mov rcx, 0x09
    call _write
    call _write_rbrac
    call _write_nline

    call _write_lbrac
    mov rbx, msg4
    mov rcx, 0x07
    call _write
    call _write_rbrac
    call _write_nline

    jmp _exit

_exit:
    mov rax, 0x3c
    mov rdi, 0x00
    syscall





