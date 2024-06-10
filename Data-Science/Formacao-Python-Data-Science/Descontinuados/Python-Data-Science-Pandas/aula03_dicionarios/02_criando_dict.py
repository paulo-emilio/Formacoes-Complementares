carros = ['Jetta Variant', 'Passat', 'Crossfox', 'DS5']
valores = [88078.64, 106161.94, 72832.16, 124549.07]

# .index
print(f"Index do Passat: {carros.index('Passat')}")
print(f'Valor do Passat: {valores[carros.index("Passat")]}')

# dicionario
dados = {'Jetta Variant': 88078.64, 'Passat': 106161.94, 'Crossfox': 72832.16, 'DS5': 124549.07}
print(f"\nValor Jetta Variant: {dados['Jetta Variant']}")

# tuplas para dicionário
dados_zip_dict = dict(zip(carros, valores))
print(f'\nTuplas para dicionário - dict(zip(carros, valores):\n{dados_zip_dict}')
