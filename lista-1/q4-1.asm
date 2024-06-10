addi x18, x0, 0 
addi x19, x0, 1 
lw x20, espaco 
lw x22, MaxIterations
lw x25, ascii

entrada:
    lw x21, 1025(x0)
    beq x21, x20, fimPrograma
	sub x21, x21,x25
    jal x1, fatorial
    add x18, x18, x21
    beq x0,x0, entrada

fimPrograma:
    add x18, x18, x25
    sw x18, 1024(x0)
    halt
    

fatorial:
    addi sp, sp, -16

    sw x21, 0(sp) 
    sw x1, 8(sp) 

    beq x21,x0, valores
    beq x21, x19, valores

    addi x21, x21, -1

    jal x1, fatorial
    lw x6, 0(sp)

    addi x7, x0, 0
    addi x23, x0, 0
    mult:
        addi x7, x7, 1

        
        andi x28, x6, 1
        beq x28, x0, shift
        add x23, x23, x21
        
        shift:
            
            slli x21, x21, 1
            
            srli x6, x6, 1
        
        bne x22, x7, mult

        add x21, x23, x0

    beq x0,x0,fimRecursao

valores:
    addi x21, x0, 1

fimRecursao:
    lw x1, 8(sp)
    addi sp, sp, 16
    jalr x0, 0(x1)

espaco: .word 0x20
MaxIterations: .word 32
ascii: .word 0x30
