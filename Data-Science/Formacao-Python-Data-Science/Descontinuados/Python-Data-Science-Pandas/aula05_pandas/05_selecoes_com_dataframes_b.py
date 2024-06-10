import pandas as pd
linha = '-'*60
dataset = pd.read_csv('../data/db.csv', sep=';', index_col=0)

print(dataset[:2])  # só os 2 primeiros valores (indice 0 e 1)

# .loc[]

print(linha)
print('.loc["Passat"]:\n')

print(dataset.loc['Passat'])  # retorna uma Series com as infos do Passat

print(linha)
print(".loc[['Jetta Variant', 'Crossfox']]:\n")

print(dataset.loc[['Jetta Variant', 'Crossfox']])  # retorna uma DataFrame com as infos desses carros

print(linha)
print(".loc[['Passat', 'DS5'], ['Motor', 'Valor']]:")

print(dataset.loc[['Passat', 'DS5'], ['Motor', 'Valor']])

# print(dataset.loc[:, ['Motor', 'Valor']]) -> TODAS LINHAS


