dados = {'Jetta Variant': 88078.64, 'Passat': 106161.94, 'Crossfox': 72832.16, 'DS5': 124549.07}

# existe ou nao em 'dados'
print('Passat' in dados)
print('Fusca' in dados)
print('Fusca' not in dados)
print()

print(len(dados))

# add item no dict
dados['Fusca'] = 10000

print()
print(dados)

# deletando no dict:
del dados['Crossfox']
print()
print(dados)
