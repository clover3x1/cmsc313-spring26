.globl _start

# .data stores static variables
.section .data
    prompt: .asciz "Enter a single digit: " # prompt, length 22
    output: .asciz "The double is: "        # output, length 15
    newline: .byte 10                       # ascii byte for newline, length 1

# .bss stores dynamically allocated variables
.section .bss
    .lcomm buffer, 4

# .text stores instructions
.section .text
    _start:
        # print prompt
        mov $4, %eax       # syswrite
        mov $1, %ebx       # stdout
        mov $prompt, %ecx  # message
        mov $22, %edx      # length
        int $0x80

        # take input
        mov $3, %eax       # sysread
        mov $0, %ebx       # stdin
        mov $buffer, %ecx  # destination
        mov $2, %edx       # length
        int $0x80

        # convert ascii to int, do math
        xor %eax, %eax
        mov (buffer), %eax
        sub $48, %eax
        add %eax, %eax
        add $48, %eax
        mov %eax, (buffer)

        # print output (first msg, then buffer, then newline)
        mov $4, %eax       # syswrite msg
        mov $1, %ebx       # stdout
        mov $output, %ecx  # message
        mov $15, %edx      # length
        int $0x80

        mov $4, %eax       # syswrite buffer
        mov $1, %ebx       # stdout
        mov $buffer, %ecx  # message
        mov $1, %edx       # length
        int $0x80

        mov $4, %eax       # syswrite newline
        mov $1, %ebx       # stdout
        mov $newline, %ecx # message
        mov $1, %edx       # length
        int $0x80

        # return 0
        mov $1, %eax
        xor %ebx, %ebx
        int $0x80
