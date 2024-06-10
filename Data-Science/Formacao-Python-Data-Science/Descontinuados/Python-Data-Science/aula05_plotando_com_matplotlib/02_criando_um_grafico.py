import matplotlib.pyplot as plt
from random import randrange

notas = []
for n in range(8):
    notas.append(randrange(0, 11))

# Eixos do gráfico com 8 notas de 8 provas
x = list(range(1, 9))  # lista de 1 até 8
y = notas
plt.plot(x, y, marker='o')  # cria o gráfico / marker='o' define uma marcação de uma bolinha em cada nota
plt.title('Notas de Matemática')  # atribui um título
plt.xlabel('Provas')  # subtítulo para o eixo x
plt.ylabel('Notas')  # subtítulo para o eixo y
plt.show()  # mostra o gráfico
