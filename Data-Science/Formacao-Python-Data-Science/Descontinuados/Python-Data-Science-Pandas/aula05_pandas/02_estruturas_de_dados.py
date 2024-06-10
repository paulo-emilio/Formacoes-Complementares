import pandas as pd

# Series são arrays unidimensionais rotulados capazes de armazenar qualquer tipo de dado.
# Os rótulos das linhas são chamados de index. A forma básica de criação de uma Series é a seguinte:
#     s = pd.Series(dados, index = index)
# O argumento dados pode ser um dicionário, uma lista, um array Numpy ou uma constante.

# DataFrame
# é uma estrutura de dados tabular bidimensional com rótulos nas linha e colunas.
# Como a Series, os DataFrames são capazes de armazenar qualquer tipo de dados.
#     df = pd.DataFrame(dados, index = index, columns = columns)
# O argumento dados pode ser um dicionário, uma lista, um array Numpy, uma Series e outro DataFrame.

carros = ['Jetta Variant', 'Passat', 'Crossfox']
pd_carros = pd.Series(carros)
print(pd_carros)
