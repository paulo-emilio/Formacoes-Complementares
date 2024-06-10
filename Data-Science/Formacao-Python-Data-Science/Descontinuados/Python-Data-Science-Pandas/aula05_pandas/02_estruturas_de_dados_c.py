import pandas as pd

# DataFrame apartir de dados externos
dataset = pd.read_csv('../data/db.csv', sep=';', index_col=0)  # index_col transforma o índice no valor que quiser
                                                               # nesse caso tranformei nos nomes dos carros
                                                               # (o padrão é numeral)

print(dataset)
