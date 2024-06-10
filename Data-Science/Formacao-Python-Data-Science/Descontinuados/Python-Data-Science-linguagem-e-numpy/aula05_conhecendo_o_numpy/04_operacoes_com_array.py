import numpy as np

km = np.array([44410., 5712., 37123., 0., 25757.])
anos = np.array([2003, 1991, 1990, 2023, 2006])

idade = 2023 - anos  # obs: essa conta só é possível porque 'anos' é uma array numpy e não uma simples lista
# print(idade)

km_media_por_ano = km / idade  # da um erro pois uma das km's é 0, e não existe divisao por 0
print(km_media_por_ano)

