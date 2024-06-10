import numpy as np

km = np.array([44410., 5712., 37123., 5534., 25757.])
anos = np.array([2003, 1991, 1990, 2022, 2006])
dados = np.array([km, anos])

contador = np.arange(10)

# Calcule a km média dos carros fabricados depois de 2000
mais_2000 = dados[:, dados[1] > 2000]
print(mais_2000)

km_media = mais_2000[0] / (2023 - mais_2000[1])
print(km_media)
