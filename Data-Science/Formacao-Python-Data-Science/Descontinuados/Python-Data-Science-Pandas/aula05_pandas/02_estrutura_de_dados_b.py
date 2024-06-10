import pandas as pd

# Criando um DataFrame apartir de uma lista de dicionários

dados = [
    {'Nome': 'Jetta Variant', 'Motor': 'Motor 4.0 Turbo', 'Ano': 2003, 'Quilometragem': 44410.0, 'Zero_km': False, 'Valor': 88078.64},
    {'Nome': 'Passat', 'Motor': 'Motor Diesel', 'Ano': 1991, 'Quilometragem': 5712.0, 'Zero_km': False, 'Valor': 106161.94},
    {'Nome': 'Crossfox', 'Motor': 'Motor Diesel V8', 'Ano': 1990, 'Quilometragem': 37123.0, 'Zero_km': False, 'Valor': 72832.16}
]

dataset = pd.DataFrame(dados)  # cria auomaticamente os rótulos apartir das chaves
print(dataset[['Nome', 'Ano', 'Valor']])  # printando só nome ano e valor

print('--'*25)
# Criando com um dicionário somente
dados = {
    'Nome': ['Jetta Variant', 'Passat', 'Crossfox'],
    'Motor': ['Motor 4.0 Turbo', 'Motor Diesel', 'Motor Diesel V8'],
    'Ano': [2003, 1991, 1990],
    'Quilometragem': [44410.0, 5712.0, 37123.0],
    'Zero_km': [False, False, False],
    'Valor': [88078.64, 106161.94, 72832.16]
}
dataset = pd.DataFrame(dados)
print(dataset[['Nome', 'Quilometragem', 'Zero_km']])