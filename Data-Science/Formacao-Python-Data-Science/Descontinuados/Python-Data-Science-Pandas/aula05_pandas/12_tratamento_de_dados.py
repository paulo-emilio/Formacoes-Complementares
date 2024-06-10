import pandas as pd
linha = '-'*60
dataset = pd.read_csv('../data/db.csv', sep=';', index_col=0)

print(dataset.info())  # descobrimos que cada coluna tem 258 valores não nulos, menos a Quilometragem com 197
print(linha)

# Descobrindo quais estão nulos
km_null = dataset.Quilometragem.isna()  # mostra quais linhas da coluna Quilometragem possuem valores nulos (True)
print(dataset[km_null]['Quilometragem'])

print(linha)

# Passando esses valores nulos (NaN) para 0
dataset.fillna(0, inplace=True)
# Fillna == preencha Nan com (0) | inplace=True == no local que NaN é True. Obs.: sem isso ele não altera o DataFrame

# verificando se todos zero_km passaram a quilometragem para 0
print(dataset.query('Quilometragem == 0')[['Quilometragem', 'Zero_km']])

print(linha)

# Deletando a linha onde 'Quilometragem' é nulo:
dataset = pd.read_csv('../data/db.csv', sep=';', index_col=0)
dataset.dropna(subset=['Quilometragem'], inplace=True)
print(dataset)
# observe que de 258 linhas, passou a ser 197 rows
