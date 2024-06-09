lw x9, MaxIterations
lw x18, N1 # multiplier
lw x19, N2 # multiplicand
addi x20, x0, 0
addi x5, x0, 0

mult:
    
    addi x5, x5, 1 # Incrementa contador
	

    # Test multiplier (bit mask)
    andi x6, x18, 1
    beq x6, x0, shift
    # Add multiplicand to product and place the result in Product register
    add x20, x20, x19
    
    shift:
        
		slli x19, x19, 1 # Shift the multiplicand register left 1 bit
		
        srli x18, x18, 1 # Shift the multiplier register right 1 bit
    
    bne x9, x5, mult

halt

N1: .word 15
N2: .word 20
MaxIterations: .word 32
