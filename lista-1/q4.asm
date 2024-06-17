# Entrada tem que ter espaço no final ex: "33333 "
addi x18, x0, 0 
addi x19, x0, 1 
lw x20, espaco # Parâmetro pra o caracter espaço
lw x22, MaxIterations # Máximo de iterações para a multiplicação
lw x25, ascii # Parâmetro pra imprimir os números

entrada:
    lw x21, 1025(x0) # Começo do loop que lê todos até o espaço
    beq x21, x20, fimPrograma # Caso seja espaço termina o programa
	sub x21, x21,x25
    jal x1, fatorial # Função fatorial
    add x18, x18, x21
    beq x0,x0, entrada # Volta pra o começo do loop

fimPrograma:
    addi x26, x0, 0
    # Algoritmo pra imprimir o valor, consideramos o máximo como 9! * 5
    maiorQue1M:
        lw x27, n1000000
        blt x18, x27, imprimir1M
        sub x18, x18, x27
        addi x26,x26,1
        beq x0,x0,maiorQue1M

    imprimir1M:
        add x26, x26, x25
        sw x26, 1024(x0)
        addi x26, x0, 0
    maiorQue100k:
        lw x27, n100000
        blt x18, x27, imprimir100k
        sub x18, x18, x27
        addi x26,x26,1
        beq x0,x0,maiorQue100k

    imprimir100k:
        add x26, x26, x25
        sw x26, 1024(x0)
        addi x26, x0, 0
    maiorQue10k:
        lw x27, n10000
        blt x18, x27, imprimir10k
        sub x18, x18, x27
        addi x26,x26,1
        beq x0,x0,maiorQue10k
    
    imprimir10k:
        add x26, x26, x25
        sw x26, 1024(x0)
        addi x26, x0, 0
    maiorQue1k:
        lw x27, n1000
        blt x18, x27, imprimir1k
        sub x18, x18, x27
        addi x26,x26,1
        beq x0,x0,maiorQue1k

    imprimir1k:
        add x26, x26, x25
        sw x26, 1024(x0)
        addi x26, x0, 0
    maiorQue100:
        lw x27, n100
        blt x18, x27, imprimir100
        sub x18, x18, x27
        addi x26,x26,1
        beq x0,x0,maiorQue100
    
    imprimir100:
        add x26, x26, x25
        sw x26, 1024(x0)
        addi x26, x0, 0
    maiorQue10:
        lw x27, n10
        blt x18, x27, imprimir10
        sub x18, x18, x27
        addi x26,x26,1
        beq x0,x0,maiorQue10
    
    imprimir10:
        add x26, x26, x25
        sw x26, 1024(x0)
        addi x26, x0, 0
    maiorQue1:
        blt x18, x19, imprimir
        sub x18, x18, x19
        addi x26,x26,1
        beq x0,x0,maiorQue1

    imprimir:
        add x26, x26, x25
        sw x26, 1024(x0)
    halt
    

fatorial:
    addi sp, sp, -16 # Aloca espaço na stack, pra o end de mem e o An

    sw x21, 0(sp) # Escreve o An na pilha (Sendo An o número na iteração n)
    sw x1, 8(sp) # Escreve o end de retorno na pilha

    beq x21,x0, valores # Se for == 0, acaba a recursão
    beq x21, x19, valores # Se for == 1, também

    addi x21, x21, -1 # Subtrai i, e chama outra iteração

    jal x1, fatorial
    lw x6, 0(sp)

    addi x7, x0, 0
    addi x23, x0, 0
    # Algoritmo pra multiplicar An e An-1
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

    beq x0,x0,fimRecursao # Termina a iteração atual

valores:
    addi x21, x0, 1 # Caso seja 1 ou 0, retorna 1

fimRecursao:
    lw x1, 8(sp) # Pega o endereço de retorno
    addi sp, sp, 16 # Desaloca espaço da pilha
    jalr x0, 0(x1) # Retorna a última iteração

espaco: .word 0x20
MaxIterations: .word 32
ascii: .word 0x30
n1000000: .word 1000000
n100000: .word 100000
n10000: .word 10000
n1000: .word 1000
n100: .word 100
n10: .word 10