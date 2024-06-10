import pandas as pd
linha = '-'*60
dataset = pd.read_csv('../data/db.csv', sep=';', index_col=0)

motor = dataset.Motor  # pega os dados da coluna 'Motor'

motor_diesel = motor == 'Motor Diesel'  # só os que tem motor a diesel
print(dataset[motor_diesel].head())

print(linha)
print('Na marra:')

print(dataset[(dataset.Zero_km == True) & (dataset.Motor == 'Motor Diesel')][['Motor', 'Zero_km']])
#                      é zero km                    é motor a diesel          print só essas colunas
# obs: "e" == "&"  --  "ou" == "|"

print(linha)


# Método Query
print('Query:')

diesel_e_zerokm = dataset.query('Motor == "Motor Diesel" and Zero_km == True')  # "ou" == "or"
print(diesel_e_zerokm[['Motor', 'Zero_km']])

