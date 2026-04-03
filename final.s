.data

maze:
    .byte 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
    .byte 1,0,0,0,0,0,1,0,1,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0,1,0,0,0,0,1
    .byte 1,0,1,0,1,0,1,0,1,0,1,1,1,1,1,0,0,1,0,1,1,0,1,1,0,1,1,1,1,1,1,0,1,0,1
    .byte 1,0,1,0,1,0,0,0,0,0,0,0,1,0,1,1,0,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,1,0,1
    .byte 1,0,1,0,1,1,1,1,1,1,1,1,1,0,1,0,0,0,0,1,1,1,0,1,0,1,1,1,1,1,1,1,1,0,1
    .byte 1,0,1,0,1,0,1,0,0,0,0,0,0,0,1,1,1,1,1,1,0,1,1,1,0,0,1,0,1,0,1,0,0,0,1
    .byte 1,0,1,0,1,0,1,0,0,1,1,1,1,0,0,0,0,0,1,0,0,0,1,0,0,1,1,0,0,0,1,0,1,0,1
    .byte 1,2,1,0,0,0,1,0,0,1,0,0,1,0,0,1,1,1,1,0,1,0,1,1,0,0,1,0,1,1,1,0,1,0,1
    .byte 1,1,1,1,1,1,1,1,0,1,1,0,1,1,0,0,1,0,0,0,1,0,0,1,0,1,0,0,0,0,0,0,1,0,1
    .byte 1,0,0,0,1,0,1,0,0,0,1,0,0,1,0,0,1,0,1,1,1,1,0,1,0,1,1,0,1,1,1,1,0,0,1
    .byte 1,0,1,0,1,0,1,0,1,0,1,1,0,1,0,1,1,1,1,0,0,1,0,1,1,1,0,0,0,1,0,0,0,1,1
    .byte 1,0,1,0,1,0,1,0,1,0,1,0,0,0,0,0,0,0,0,0,1,1,0,0,1,0,0,1,1,1,1,1,0,0,1
    .byte 1,0,1,1,1,0,1,0,1,1,1,0,1,0,1,0,1,0,1,0,0,1,0,0,1,1,1,1,0,0,0,1,0,1,1
    .byte 1,0,0,0,0,0,0,0,1,0,0,0,1,1,1,0,1,1,1,1,0,1,0,0,0,0,0,0,0,1,1,1,0,0,1
    .byte 1,0,1,1,1,0,1,0,1,1,0,0,0,0,1,0,0,1,0,1,1,1,1,0,1,1,1,1,0,1,0,1,1,0,1
    .byte 1,0,1,0,0,0,1,0,0,1,0,1,1,1,1,0,0,0,0,1,0,0,1,0,1,0,1,0,0,1,0,1,0,0,1
    .byte 1,0,1,1,1,0,1,0,1,1,0,0,1,0,0,0,1,0,0,0,0,0,1,0,1,0,1,0,1,1,0,1,0,1,1
    .byte 1,0,0,0,1,0,1,0,0,1,1,0,1,1,0,1,1,1,0,1,1,0,1,0,1,0,1,0,0,1,0,1,0,0,1
    .byte 1,0,1,0,1,0,1,1,1,1,0,0,1,0,0,1,0,1,0,0,1,0,1,0,1,0,1,1,0,1,0,1,1,0,1
    .byte 1,0,1,0,1,0,0,0,0,1,1,1,1,1,1,1,0,1,0,0,1,1,1,1,1,0,0,0,0,0,0,0,0,0,1
    .byte 1,0,1,0,1,1,1,1,1,1,0,0,0,0,0,1,0,1,0,1,1,0,1,0,0,0,1,1,1,1,0,1,1,1,1
    .byte 1,0,1,0,0,0,0,0,0,0,0,1,0,1,0,1,0,0,0,0,1,0,1,0,0,0,0,0,0,1,0,0,1,0,1
    .byte 1,0,1,1,0,1,0,1,1,1,1,1,0,1,0,1,0,1,0,1,1,0,1,0,1,1,1,1,1,1,1,0,1,0,1
    .byte 1,0,0,1,0,1,0,1,0,0,0,0,0,1,0,1,0,1,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,1
    .byte 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1

colors:
    .word 0x00FFFFFF   # 0 = White
    .word 0x00000000   # 1 = Black
    .word 0x0066FF00   # 2 = Green
    .word 0x00EE4B2B   # 3 = Red

.text

li a0, LED_MATRIX_0_BASE
li a1, LED_MATRIX_0_WIDTH    # 35
li a2, LED_MATRIX_0_HEIGHT   # 25
li a3, D_PAD_0_BASE

# Load color values
la t6, colors
lw s2, 0(t6)    # white
lw s3, 4(t6)    # black
lw s4, 8(t6)    # green
lw s5, 12(t6)   # red

li s6, 1
li s7, 2

la a5, maze     # pointer to current byte

li t3, 0        # row = 0
row_loop:
    li t4, 0    # col = 0

    col_loop:
        # Load byte value (0, 1, or 2)
        lbu t0, 0(a5)
        addi a5, a5, 1      # advance byte pointer

        # Compute pixel address = BASE + (row*35 + col) * 4
        mul t5, t3, a1
        add t5, t5, t4
        slli t5, t5, 2
        add t5, t5, a0

        # Pick color based on value
        li t1, 2
        beq t0, t1, paint_green
        li t1, 1
        beq t0, t1, paint_black

        # paint white
        sw s2, 0(t5)
        j next_col

    paint_black:
        sw s3, 0(t5)
        j next_col

    paint_green:
        sw s4, 0(t5)

    next_col:
        addi t4, t4, 1
        li t1, 35
        blt t4, t1, col_loop

    addi t3, t3, 1
    li t1, 25
    blt t3, t1, row_loop


# Resetting this; it'll be used later for collison checking
la a5, maze

# Set player starting point
li t1, 23       # t1 = curr row
li t2, 14       # t2 = curr col
mul t0, t1, a1  # t0 = curr pos
add t0, t0, t2
slli t0, t0, 2
add t0, t0, a0
sw s5, 0(t0)    # draw player at starting point

# Additional row, col, and position temps to check for collisions
addi t3, t0, 0  # t3 = new pos
addi t4, t1, 0  # t4 = new row
addi t5, t2, 0  # t5 = new col


controls:
    lw s8, 0(a3)
    beq s8, s6, go_up

    lw s8, 4(a3)
    beq s8, s6, go_down
    
    lw s8, 8(a3)
    beq s8, s6, go_left
    
    lw s8, 12(a3)
    beq s8, s6, go_right
    
    j controls


go_up:
    addi t4, t4, -1    # new row -= 1
    j check_collision


go_down:
    addi t4, t4, 1     # new row += 1
    j check_collision


go_left:
    addi t5, t5, -1    # new col -= 1
    j check_collision

    
go_right:
    addi t5, t5, 1     # new col += 1
    j check_collision

    
check_collision:
    # Calculate new pos (t3)
    mul t3, t4, a1
    add t3, t3, t5
    slli t3, t3, 2
    add t3, t3, a0
    
    # Get whatever's in the next move
    mul t6, t4, a1
    add t6, t6, t5
    add t6, t6, a5
    lbu t6, 0(t6)
    
    # Check for wall (black) = 1
    beq t6, s6, idle
    
    # Check for exit (green) = 2
    beq, t6, s7, win
    
    j move


move:
    sw s2, 0(t0)
    sw s5, 0(t3)
    
    # Moved; set current position equal to new position
    addi t0, t3, 0
    addi t1, t4, 0
    addi t2, t5, 0
    
    j idle
    

idle:
    # Didn't move; set new position equal to current position
    addi t3, t0, 0
    addi t4, t1, 0
    addi t5, t2, 0
    
    lw t6, 0(a3)
    bne t6, zero, idle
    
    lw t6, 4(a3)
    bne t6, zero, idle
    
    lw t6, 8(a3)
    bne t6, zero, idle

    lw t6, 12(a3)
    bne t6, zero, idle
    
    j controls


win:
    li t3, 0
    outer_loop:
        bge t3, a2, done
        li t4, 0 
        inner_loop:
            bge t4, a1, next_row
            mul t5, t3, a1
            add t5, t5, t4
            slli t5, t5, 2
            add t5, t5, a0
            sw s4, 0(t5)
            addi t4, t4, 1
            j inner_loop
        next_row:
            addi t3, t3, 1
            j outer_loop


done:
    nop