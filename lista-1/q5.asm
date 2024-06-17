# OBS:  Sensor: A0
#       VERMELHO ESQUERDA: 2
#       VERMELHOR DIREITA: 3
#       AMARELO ESQUERDA: 4
#       AMARELO DIREITA: 5
#       VERDE ESQUERDA: 6
#       VERDE DIREITA: 7
# Loop infinito que lê o sensor e liga o determinado led
# Resposta: 

lb x10, 0(x0)
sb x10, 1030(x0)

addi x9, x0, 327
addi x18, x0, 429
addi x19, x0, 531
addi x20, x0, 634
addi x21, x0, 736

loop:
	lh x10, 1031(x0)

    blt x10, x9, Menor16C
    blt x10, x18, Menor21C
    blt x10, x19, Menor26C
    blt x10, x20, Menor31C
    blt x10, x21, Menor36C

    
    # se for entrar em nenhum, eh maior que 35
    addi x5, x0, 1
    sb x5, 1029(x0)
    beq x0, x0, Limpar
    
Menor16C:
	addi x5, x0, 4
    sb x5, 1029(x0)
    beq x0, x0, Limpar
	

Menor21C:
	addi x5, x0, 16
    sb x5, 1029(x0)
    beq x0, x0, Limpar

Menor26C:
	addi x5, x0, 32
    sb x5, 1029(x0)
    beq x0, x0, Limpar

Menor31C:
	addi x5, x0, 8
    sb x5, 1029(x0)
    beq x0, x0, Limpar

Menor36C:
	addi x5, x0, 2
    sb x5, 1029(x0)
    beq x0, x0, Limpar

Limpar:
	sb x0, 1029(x0)
	beq x0, x0, loop
	halt
