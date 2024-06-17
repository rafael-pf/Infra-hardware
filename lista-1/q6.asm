# OBS: Pinos:
#		a: 2
#		b: 3
#		c: 4 
#		d: 5
#		e: 6
#		f: 7
#		g: 8
#		h: 9
# Reposta: Considerando a frequência 1000hz, CPI = (CPUtime * freq)/instCount = (0.185 * 1000)/48
#												 = 3,85
# Calculamos considerando a entrada 1111, pois teria a maior quantidade de instruções

lw x22, ascii

addi x9, x0, 0
addi x18, x0, 0
addi x19, x0, 0
addi x20, x0, 0
addi x21, x0, 0

main:
    lb x18, 1025(x0)
    sub x18, x18, x22 # transofrmar char para numero
    slli x18, x18, 3
    add x9, x9, x18

    lb x19, 1025(x0)
    sub x19, x19, x22 # transofrmar char para numero
    slli x19, x19, 2
    add x9, x9, x19 

    lb x20, 1025(x0)
    sub x20, x20, x22 # transofrmar char para numero
    slli x20, x20, 1
    add x9, x9, x20

    lb x21, 1025(x0)
    sub x21, x21, x22 # transofrmar char para numero
    add x9, x9, x21

	# Faz as comparações pra colocar a instrução no display
    addi x7, x0, 0
    beq x9, x7, numero0

    addi x7, x0, 1
    beq x9, x7, numero1

    addi x7, x0, 2
    beq x9, x7, numero2

    addi x7, x0, 3
    beq x9, x7, numero3

    addi x7, x0, 4
    beq x9, x7, numero4

    addi x7, x0, 5
    beq x9, x7, numero5

    addi x7, x0, 6
    beq x9, x7, numero6

    addi x7, x0, 7
    beq x9, x7, numero7

    addi x7, x0, 8
    beq x9, x7, numero8

    addi x7, x0, 9
    beq x9, x7, numero9

	addi x7, x0, 15
	beq x9, x7, limpar

# Escreve cada número
numero0:
	addi x5, x0, 63
	sb x5, 1029(x0)
	halt

numero1:
	addi x5, x0, 6
	sb x5, 1029(x0)
	halt

numero2:
	addi x5, x0, 27
	addi x6, x0, 1	
	sb x5, 1029(x0)
	sb x6, 1027(x0)	
	halt

numero3:
	addi x5, x0, 15
	addi x6, x0, 1	
	sb x5, 1029(x0)
	sb x6, 1027(x0)	
	halt

numero4:
	addi x5, x0, 38
	addi x6, x0, 1	
	sb x5, 1029(x0)
	sb x6, 1027(x0)	
	halt

numero5:
	addi x5, x0, 45
	addi x6, x0, 1	
	sb x5, 1029(x0)
	sb x6, 1027(x0)	
	halt

numero6:
	addi x5, x0, 61
	addi x6, x0, 1	
	sb x5, 1029(x0)
	sb x6, 1027(x0)	
	halt

numero7:
	addi x5, x0, 7	
	sb x5, 1029(x0)	
	halt

numero8:
	addi x5, x0, 63
	addi x6, x0, 1	
	sb x5, 1029(x0)
	sb x6, 1027(x0)	
	halt

numero9:
	addi x5, x0, 47
	addi x6, x0, 1	
	sb x5, 1029(x0)
	sb x6, 1027(x0)	
	halt

# Limpa o display
limpar:
	addi x5, x0, 0 
	addi x6, x0, 0
	sb x5, 1029(x0)
	sb x6, 1027(x0)
	halt

ascii: .word 0x30
