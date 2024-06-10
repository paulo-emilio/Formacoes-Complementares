import pandas as pd
linha = '-'*60
dataset = pd.read_csv('../data/db.csv', sep=';', index_col=0)


# iloc[]
print(dataset.iloc[[1]])  # o 'iloc' usa o index mesmo que tenha sido 'alterado' com o 'index_col'

print(linha)
print(dataset.iloc[1:4])

print(linha)
print(dataset.iloc[[1, 42, 18], [1, 3, 5]])  # Linhas: 1, 42 e 18; Colunas: Ano, Zero_km e valor
