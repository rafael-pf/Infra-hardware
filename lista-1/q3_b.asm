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
    addi x25, x0, 1
    addi x26, x0, 0
    maiorQue1B:
        lw x27, n1000000000
        blt x20, x27, imprimir1B
        sub x20, x20, x27
        addi x26,x26,1
        beq x0,x0,maiorQue1B

    imprimir1B:
        add x26, x26, x22
        sw x26, 1024(x0)
        addi x26, x0, 0
    maiorQue100M:
        lw x27, n100000000
        blt x20, x27, imprimir100M
        sub x20, x20, x27
        addi x26,x26,1
        beq x0,x0,maiorQue100M

    imprimir100M:
        add x26, x26, x22
        sw x26, 1024(x0)
        addi x26, x0, 0
    maiorQue10M:
        lw x27, n10000000
        blt x20, x27, imprimir10M
        sub x20, x20, x27
        addi x26,x26,1
        beq x0,x0,maiorQue10M

    imprimir10M:
        add x26, x26, x22
        sw x26, 1024(x0)
        addi x26, x0, 0
    maiorQue1M:
        lw x27, n1000000
        blt x20, x27, imprimir1M
        sub x20, x20, x27
        addi x26,x26,1
        beq x0,x0,maiorQue1M

    imprimir1M:
        add x26, x26, x22
        sw x26, 1024(x0)
        addi x26, x0, 0
    maiorQue100k:
        lw x27, n100000
        blt x20, x27, imprimir100k
        sub x20, x20, x27
        addi x26,x26,1
        beq x0,x0,maiorQue100k

    imprimir100k:
        add x26, x26, x22
        sw x26, 1024(x0)
        addi x26, x0, 0
    maiorQue10k:
        lw x27, n10000
        blt x20, x27, imprimir10k
        sub x20, x20, x27
        addi x26,x26,1
        beq x0,x0,maiorQue10k
    
    imprimir10k:
        add x26, x26, x22
        sw x26, 1024(x0)
        addi x26, x0, 0
    maiorQue1k:
        lw x27, n1000
        blt x20, x27, imprimir1k
        sub x20, x20, x27
        addi x26,x26,1
        beq x0,x0,maiorQue1k

    imprimir1k:
        add x26, x26, x22
        sw x26, 1024(x0)
        addi x26, x0, 0
    maiorQue100:
        lw x27, n100
        blt x20, x27, imprimir100
        sub x20, x20, x27
        addi x26,x26,1
        beq x0,x0,maiorQue100
    
    imprimir100:
        add x26, x26, x22
        sw x26, 1024(x0)
        addi x26, x0, 0
    maiorQue10:
        lw x27, n10
        blt x20, x27, imprimir10
        sub x20, x20, x27
        addi x26,x26,1
        beq x0,x0,maiorQue10
    
    imprimir10:
        add x26, x26, x22
        sw x26, 1024(x0)
        addi x26, x0, 0
    maiorQue1:
        blt x20, x25, imprimir
        sub x20, x20, x25
        addi x26,x26,1
        beq x0,x0,maiorQue1

    imprimir:
        add x26, x26, x22
        sw x26, 1024(x0)
    halt

MaxIterations: .word 32
ascii: .word 0x30
espace: .word 0x20
n1000000000: .word 1000000000
n100000000: .word 100000000
n10000000: .word 10000000
n1000000: .word 1000000
n100000: .word 100000
n10000: .word 10000
n1000: .word 1000
n100: .word 100
n10: .word 10