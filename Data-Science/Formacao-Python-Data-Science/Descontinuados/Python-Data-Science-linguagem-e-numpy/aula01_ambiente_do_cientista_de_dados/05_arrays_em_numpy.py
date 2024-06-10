import numpy as np

# Km's
km = np.loadtxt('../data/carros-km.txt')  # transforma o arquivo txt em um arquivo de Array Numpy
# OBS:
#   o arquivo está na pasta 'data' que está dentro da pasta 'python_para_data_science_linguagem_e_numpy'
#   que é a mesma pasta que está a pasta 'aula01...' que é onde está esse arquivo aqui.
#   Então para pegar o .txt tive que especificar o caminho dessa forma (../data/carros-km.txt),
#   dois pontos para voltar uma pasta e só aí buscar o caminho '/data...'
'''print(km)'''

# Anos
anos = np.loadtxt('../data/carros-anos.txt', dtype=int)  # 'dtype' define o tipo dos valores que formaram a array
'''print(anos)'''

# Calculando km média
km_media = km / (2023 - anos)
print(km_media)
print(type(km_media))
