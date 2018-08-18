.global _Reset
_Reset:
    ldr x30, =stack_top	// setup stack
    mov sp, x30
    bl c_entry
    mov x4, #64
loop:
    add x4,x4,#1
    mov x3, x4    
    bl print
    cmp x4, 90
    bne loop
    b .

print:
    ldr x5, =0x09000000
    str x3, [x5]
    ret
