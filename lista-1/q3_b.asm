# OBS: Colocar entrada da seguinte forma: "12 28 "

lw x9, MaxIterations 
addi x18, x0, 0 # multiplier
addi x19, x0, 0 # multiplicand
addi x20, x0, 0 # product
addi x5, x0, 0 # contador
lw x22, ascii
lw x23, espace
addi x24, x0, 9

lerMultiplier:
    lb x7, 1025(x0)
    beq x7, x23, lerMultiplicand # verifica se eh espaco
    sub x7, x7, x22 # transofrmar char para numero
    add x28, x0, x18
    addi x5, x0, 0
    incrementaMultiplier:
        add x18, x18, x28
        addi x5, x5, 1
        bne x5, x24, incrementaMultiplier
    
    add x18, x18, x7 
    beq x0, x0, lerMultiplier # continuar lendo

lerMultiplicand:
    lb x7, 1025(x0)
    beq x7, x23, mult # verifica se eh espaco
    sub x7, x7, x22 # transofrmar char para numero
    add x28, x0, x19
    addi x5, x0, 0
    incrementaMultiplicand:
        add x19, x19, x28
        addi x5, x5, 1
        bne x5, x24, incrementaMultiplicand
    
    add x19, x19, x7
    beq x0, x0, lerMultiplicand # continuar lendo

addi x5, x0, 0
mult:
    addi x5, x5, 1 # Incrementa contadord

    # Test multiplier (bit mask)
    andi x6, x18, 1
    beq x6, x0, shift
    # Add multiplicand to product and place the result in Product register
    add x20, x20, x19
    
    shift:
        
		slli x19, x19, 1 # Shift the multiplicand register left 1 bit
		
        srli x18, x18, 1 # Shift the multiplier register right 1 bit
    
    bne x9, x5, mult

final:
    sw x20, 1024(x0)
    halt

MaxIterations: .word 32
ascii: .word 0x30
espace: .word 0x20
