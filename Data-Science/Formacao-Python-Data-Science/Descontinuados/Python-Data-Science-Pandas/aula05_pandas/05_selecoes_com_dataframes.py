import pandas as pd
linha = '-'*60
dataset = pd.read_csv('../data/db.csv', sep=';', index_col=0)
print(dataset.head())  # mostra as 5 primeiras linhas

print(linha)

print('dataset[Valor]: (Series)')
print(dataset['Valor'].head())
print(f'\nTipo: {type(dataset["Valor"])}')  # o tipo é Series, ou seja, o DataFrame é um conjunto de Series

print(linha)

print('dataset[[Valor]]: (DataFrame)')
print(dataset[['Valor']].head())
print(f'\nTipo: {type(dataset[["Valor"]])}')
