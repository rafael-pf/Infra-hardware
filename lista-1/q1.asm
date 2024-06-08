# OBSERVAÇÃO:
#   Após cada palavra, inserir um espaço (incluindo após a segunda)
#   Ex: "RAFA DANIEL "


lw x9, espace
# Acumulador da primeira palavra
addi x18, x0, 0

# Acumulador da segunda palavra
addi x19, x0, 0

loop1:
    lw x5, 1025(x0) # ler o char
    
    # comparar com as letras
    
    # comparar com A
    lw x6, A
    beq x5, x6, Somar3l1
    
    # comparar com B
    lw x6, B
    beq x5, x6, Somar4l1
    
    # comparar com C
    lw x6, C
    beq x5, x6, Somar4l1
    
    # comparar com D
    lw x6, D
    beq x5, x6, Somar1l1
    
    # comparar com E
    lw x6, E
    beq x5, x6, Somar3l1
    
    # comparar com F
    lw x6, F
    beq x5, x6, Somar2l1
    
    # comparar com G
    lw x6, G
    beq x5, x6, Somar1l1
    
    # comparar com H
    lw x6, H
    beq x5, x6, Somar2l1
    
    # comparar com I
    lw x6, I
    beq x5, x6, Somar3l1
    
    # comparar com J
    lw x6, J
    beq x5, x6, Somar8l1
    
    # comparar com K
    lw x6, K
    beq x5, x6, Somar5l1
    
    # comparar com L
    lw x6, L
    beq x5, x6, Somar8l1
    
    # comparar com M
    lw x6, M
    beq x5, x6, Somar4l1
    
    # comparar com N
    lw x6, N
    beq x5, x6, Somar4l1
    
    # comparar com O
    lw x6, O
    beq x5, x6, Somar3l1
    
    # comparar com P
    lw x6, P
    beq x5, x6, Somar4l1
    
    # comparar com Q
    lw x6, Q
    beq x5, x6, Somar6l1
    
    # comparar com R
    lw x6, R
    beq x5, x6, Somar5l1
    
    # comparar com S
    lw x6, S
    beq x5, x6, Somar5l1
    
    # comparar com T
    lw x6, T
    beq x5, x6, Somar1l1
    
    # comparar com U
    lw x6, U
    beq x5, x6, Somar3l1
    
    # comparar com V
    lw x6, V
    beq x5, x6, Somar2l1
    
    # comparar com W
    lw x6, W
    beq x5, x6, Somar2l1
    
    # comparar com X
    lw x6, X
    beq x5, x6, Somar8l1
    
    # comparar com Y
    lw x6, Y
    beq x5, x6, Somar2l1
    
    # comparar com Z
    lw x6, Z
    beq x5, x6, Somar6l1
    
    # Se for espaço para o segundo loop
    beq x5, x9, loop2

Somar1l1:
    addi x18,x18,1
    beq x0,x0,loop1

Somar2l1:
    addi x18,x18,2
    beq x0,x0,loop1
    
Somar3l1:
    addi x18,x18,3
    beq x0,x0,loop1

Somar4l1:
    addi x18,x18,4
    beq x0,x0,loop1

Somar5l1:
    addi x18,x18,5
    beq x0,x0,loop1

Somar6l1:
    addi x18,x18,6
    beq x0,x0,loop1

Somar7l1:
    addi x18,x18,7
    beq x0,x0,loop1

Somar8l1:
    addi x18,x18,8
    beq x0,x0,loop1

loop2:
    lw x5, 1025(x0) # ler o char
    
    # comparar com as letras
    
    # comparar com A
    lw x6, A
    beq x5, x6, Somar3l2
    
    # comparar com B
    lw x6, B
    beq x5, x6, Somar4l2
    
    # comparar com C
    lw x6, C
    beq x5, x6, Somar4l2
    
    # comparar com D
    lw x6, D
    beq x5, x6, Somar1l2
    
    # comparar com E
    lw x6, E
    beq x5, x6, Somar3l2
    
    # comparar com F
    lw x6, F
    beq x5, x6, Somar2l2
    
    # comparar com G
    lw x6, G
    beq x5, x6, Somar1l2
    
    # comparar com H
    lw x6, H
    beq x5, x6, Somar2l2
    
    # comparar com I
    lw x6, I
    beq x5, x6, Somar3l2
    
    # comparar com J
    lw x6, J
    beq x5, x6, Somar8l2
    
    # comparar com K
    lw x6, K
    beq x5, x6, Somar5l2
    
    # comparar com L
    lw x6, L
    beq x5, x6, Somar8l2
    
    # comparar com M
    lw x6, M
    beq x5, x6, Somar4l2
    
    # comparar com N
    lw x6, N
    beq x5, x6, Somar4l2
    
    # comparar com O
    lw x6, O
    beq x5, x6, Somar3l2
    
    # comparar com P
    lw x6, P
    beq x5, x6, Somar4l2
    
    # comparar com Q
    lw x6, Q
    beq x5, x6, Somar6l2
    
    # comparar com R
    lw x6, R
    beq x5, x6, Somar5l2
    
    # comparar com S
    lw x6, S
    beq x5, x6, Somar5l2
    
    # comparar com T
    lw x6, T
    beq x5, x6, Somar1l2
    
    # comparar com U
    lw x6, U
    beq x5, x6, Somar3l2
    
    # comparar com V
    lw x6, V
    beq x5, x6, Somar2l2
    
    # comparar com W
    lw x6, W
    beq x5, x6, Somar2l2
    
    # comparar com X
    lw x6, X
    beq x5, x6, Somar8l2
    
    # comparar com Y
    lw x6, Y
    beq x5, x6, Somar2l2
    
    # comparar com Z
    lw x6, Z
    beq x5, x6, Somar6l2

    beq x5, x9, comparar

Somar1l2:
    addi x19,x19,1
    beq x0,x0,loop2

Somar2l2:
    addi x19,x19,2
    beq x0,x0,loop2
    
Somar3l2:
    addi x19,x19,3
    beq x0,x0,loop2

Somar4l2:
    addi x19,x19,4
    beq x0,x0,loop2

Somar5l2:
    addi x19,x19,5
    beq x0,x0,loop2

Somar6l2:
    addi x19,x19,6
    beq x0,x0,loop2

Somar7l2:
    addi x19,x19,7
    beq x0,x0,loop2

Somar8l2:
    addi x19,x19,8
    beq x0,x0,loop2

comparar:
    beq x18,x19,empate
    blt x19,x18, j1Ganhou

# J2 ganhou
lw x5, J
sw x5, 1024(x0)
lw x5, n2
sw x5, 1024(x0)
lw x5, espace
sw x5, 1024(x0)
lw x5, G
sw x5, 1024(x0)
lw x5, A
sw x5, 1024(x0)
lw x5, N
sw x5, 1024(x0)
lw x5, H
sw x5, 1024(x0)
lw x5, O
sw x5, 1024(x0)
lw x5, U
sw x5, 1024(x0)
halt

empate:
    lw x5, E 
    sw x5, 1024(x0)
    lw x5, M
    sw x5, 1024(x0)
    lw x5, P 
    sw x5, 1024(x0)
    lw x5, A 
    sw x5, 1024(x0)
    lw x5, T 
    sw x5, 1024(x0)
    lw x5, E 
    sw x5, 1024(x0)
    halt

j1Ganhou:
    lw x5, J
    sw x5, 1024(x0)
    lw x5, n1
    sw x5, 1024(x0)
    lw x5, espace
    sw x5, 1024(x0)
    lw x5, G
    sw x5, 1024(x0)
    lw x5, A
    sw x5, 1024(x0)
    lw x5, N
    sw x5, 1024(x0)
    lw x5, H
    sw x5, 1024(x0)
    lw x5, O
    sw x5, 1024(x0)
    lw x5, U
    sw x5, 1024(x0)
    halt

espace: .word 0x20
A: .word 0x41
B: .word 0x42
C: .word 0x43
D: .word 0x44
E: .word 0x45
F: .word 0x46
G: .word 0x47
H: .word 0x48
I: .word 0x49
J: .word 0x4a
K: .word 0x4b
L: .word 0x4c
M: .word 0x4d
N: .word 0x4e
O: .word 0x4f
P: .word 0x50
Q: .word 0x51
R: .word 0x52
S: .word 0x53
T: .word 0x54
U: .word 0x55
V: .word 0x56
W: .word 0x57
X: .word 0x58
Y: .word 0x59
Z: .word 0x5a
n1: .word 0x31
n2: .word 0x32