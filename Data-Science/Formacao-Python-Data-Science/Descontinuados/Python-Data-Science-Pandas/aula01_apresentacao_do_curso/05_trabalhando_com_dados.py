import pandas as pd
# pd.set_option('display.max_rows', 1000)  # faz com que o máximo de linhas exibidas seja 1000 (o padrão é 10)
# pd.set_option('display.max_columns', 1000)  # colunas

dataset = pd.read_csv('../data/db.csv', sep=';')  # sep(separador)=';' pois os dados estão separados por ';' no arquivo
                                                  # quando é um arquivo de planilha fica separado por ';'
print(dataset)

print('\n   dtypes:')
print(dataset.dtypes)  # no dataframe o 'pandas' assume que str é object
# também podemos observar que no 'pandas' podemos usar dados de tipos diferentes, coisa que não era possível no numpy


# calculando estatística descritiva
estatistica_km_e_valor = dataset[['Quilometragem', 'Valor']].describe()
print(f'\n Estatística descritiva:\n{estatistica_km_e_valor}')

print(f'\n .info:\n{dataset.info}')
