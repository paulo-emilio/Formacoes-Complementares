import numpy as np

anos = np.loadtxt('../data/carros-anos.txt', dtype=int)
km = np.loadtxt('../data/carros-km.txt')
valor = np.loadtxt('../data/carros-valor.txt')

# np.column_stack() — transforma arrays unidimensionais em colunas de um array bidimensional
dataset = np.column_stack((anos, km, valor))
print(f'Shape: {dataset.shape}')

# np.mean() -- retorna a média dos elementos do array ao longo do eixo especificado
print(f'np.mean - média de todos elementos: {np.mean(dataset)}')  # média de tudo
print(f'np.mean axis=0 - Média das colunas separadas: {np.mean(dataset, axis=0)}')  # média das colunas separadas
'''print(np.mean(dataset, axis=1))'''  # média das linhas separadas
print(f'np.mean(dataset[:, 1] - Média da coluna de km: {np.mean(dataset[:, 1])}')  # ':' -> todas as linhas, '1' -> coluna 1 (km)

# np.std() -- retorna o desvio padrão dos elementos do array ao longo do eixo especificado
print(f'np. std - Desvio padrão da coluna de valores: {np.std(dataset[:, 2])}')

# ndarray.sum() -- soma dos elementos
print(f'ndarray.sum() - Soma dos valores: {dataset[:, 2].sum()}')
