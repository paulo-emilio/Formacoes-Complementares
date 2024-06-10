dados = {'Jetta Variant': 88078.64, 'Crossfox': 72832.16, 'DS5': 124549.07, 'Passat': 100666.69, 'Fusca': 20000}

print(f'dados.keys():\n     {dados.keys()}')

print('\nIterando valores:')
for key in dados.keys():
    print(f'     {dados[key]}')

print(f'\ndados.values():\n     {dados.values()}')

print(f'\ndados.items():\n      {dados.items()}')  # uma lista de tuplas com os valores

print('\nIterando items():')
for items in dados.items():
    print(f'     {items}')

print('\nDesenpacotando items(): \n     < 100000:')
for key, value in dados.items():
    if value < 100000:
        print(f'     {key:13} | R$ {value}')
