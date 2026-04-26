.globl _start

.text
    _start:
        mov $1, %eax       # syscall for sys_exit
        xor %ebx, %ebx     # exit status 0 (xor ebx guaranteed to give 0)
        int $0x80          # interrupt (executes code)
