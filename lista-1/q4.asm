addi x18, x0, 0 # Registrador que vai guardar a soma
addi x19, x0, 1 # Registrador para o parámetro 1
lw x20, espaço # Verificar se x20 é registrador salvo
lw x22, MaxIterations

entrada:
    lw x21, 1025(x0) # Verificar esse registrador
    beq x21, x20, fimPrograma
    jal x1, fatorial
    add x18, x18, x21
    beq x0,x0, entrada

fimPrograma:
    # Fazer o processo de imprimir números grandes
    sw x18, 1024(x0)
    halt
    # Fim do programa

fatorial:
    addi sp, sp, -16
    sw x21, 0(sp) # coloca o valor do elemento n na pilha
    sw x1, 8(sp) # coloca o valor do endereço de retorno na pilha

    beq x21,x0, v1v0 # Pula pra o fim da recursao caso n == 0
    beq x21, x19, v1v0 # Pula pra o fim da recursao caso n == 1

    addi x21, x21,-1
    jal x1, fatorial
    lw x6, 0(sp)
    # Algoritmo de multiplicacao para x6 e x21
    # Números multiplicados: x18 e x19
    addi x7, x0, 0
    mult:
        addi x7, x7, 1 # Incrementa contadord

        # Test multiplier (bit mask)
        andi x28, x6, 1
        beq x28, x0, shift
        # Add multiplicand to product and place the result in Product register
        add x23, x23, x21
        
        shift:
            
            slli x21, x21, 1 # Shift the multiplicand register left 1 bit
            
            srli x6, x6, 1 # Shift the multiplier register right 1 bit
        
        bne x22, x7, mult

        sw x20, x21

    beq x0,x0,fimRecursao

v1v0:
    addi x21, x0, 1

fimRecursao:
    lw x1, 8(sp)
    addi sp, sp, 16 # Limpando a pilha
    jalr x0, 0(x1)

espaço: .word 0x20
MaxIterations: .word 32