.globl _start

.data
    message: .asciz "Hello, world!"

.text
    _start:
        mov $4, %eax       # syscall for sys_write
        mov $1, %ebx       # file descriptor (for stdout)
        mov $message, %ecx # message data
        mov $13, %edx      # data length
        int $0x80          # interrupt (executes code)

        mov $1, %eax       # syscall for sys_exit
        xor %ebx, %ebx     # exit status 0 (xor ebx guaranteed to give 0)
        int $0x80          # interrupt (executes code)