from random import randrange, seed

zero_a_dez = randrange(0, 11)

numeros = []

for n in range(8):  # roda 8x
    numeros.append(randrange(0, 11))  # gera um número de 0 a 11

print(f'Lista de números aleatórios: {numeros}')

# Manupilando a geração de números usando o seed()
seed(1)  # depois de exacutado pela primeira vez, toda vez que for excutado
         # irá gerar o mesmo numero que foi gerado inicialmente

n = randrange(0, 11)
print(n)

seed(2)
n2 = randrange(0, 101)
print(n2)
