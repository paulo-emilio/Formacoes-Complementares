# Operações com arrays de duas dimenções
import numpy as np


km = np.array([44410., 5712., 37123., 0., 25757.])
anos = np.array([2003, 1991, 1990, 2023, 2006])
dados = np.array([km, anos])

print(f'shape = {dados.shape}')
print(f'km = {dados[0]}')
print(f'anos = {dados[1]}')

km_media = dados[0] / (2023 - dados[1])
print(f'km_media = {km_media}')
