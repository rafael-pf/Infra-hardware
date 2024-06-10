.data
.text
.global main

# Função principal
main:
    li a0, 5          # Carrega o valor 5 em a0 (queremos calcular 5!)
    jal ra, factorial # Chama a função factorial
    # O resultado do fatorial estará em a0
    # A execução continua aqui após o retorno da função
    # Coloque aqui o código que você deseja executar após calcular o fatorial

    # Finaliza o programa
    li a7, 10         # Chamada de sistema para finalizar o programa
    ecall

# Função factorial
# Parâmetro: a0 (n)
# Retorno: a0 (n!)
factorial:
    addi sp, sp, -16  # Reserva espaço na pilha
    sw ra, 12(sp)     # Salva o valor de ra na pilha
    sw a0, 8(sp)      # Salva o valor de a0 na pilha

    li t0, 1          # t0 = 1
    beq a0, t0, base_case  # Se n == 1, vai para base_case
    beqz a0, base_case    # Se n == 0, vai para base_case

    addi a0, a0, -1   # n = n - 1
    jal ra, factorial # Chama factorial(n-1)
    lw t1, 8(sp)      # Carrega o valor original de a0 (n) de volta para t1
    mul a0, a0, t1    # a0 = a0 * n (resultado de factorial(n-1) * n)

    j end_factorial   # Vai para o fim da função

base_case:
    li a0, 1          # a0 = 1 (fatorial de 0 ou 1 é 1)

end_factorial:
    lw ra, 12(sp)     # Restaura o valor de ra
    addi sp, sp, 16   # Libera espaço na pilha
    jr ra             # Retorna ao chamador
