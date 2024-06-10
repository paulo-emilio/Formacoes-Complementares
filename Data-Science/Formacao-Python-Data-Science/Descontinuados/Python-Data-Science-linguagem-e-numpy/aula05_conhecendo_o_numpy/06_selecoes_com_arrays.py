import numpy as np

km = np.array([44410., 5712., 37123., 0., 25757.])
anos = np.array([2003, 1991, 1990, 2023, 2006])
dados = np.array([km, anos])

print(dados[1, 3])

contador = np.arange(10)
print(contador[:8:2])  # do índice 0 ao 8 com passo 2

km_media = km[:3] / (2023 - anos[:3])
print(km_media)

# Indexação com array booleano
print(contador > 5)
print(contador[contador > 5])

