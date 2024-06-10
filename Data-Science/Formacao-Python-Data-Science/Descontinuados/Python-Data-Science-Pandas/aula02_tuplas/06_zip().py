# zip()
carros = ['Jetta Variant', 'Passat', 'Crossfox', 'DS5']
valores = [88078.64, 106161.94, 72832.16, 124549.07]

zip_carros_valores = list(zip(carros, valores))
print(zip_carros_valores)

print()

for carro in zip_carros_valores:
    print(carro)

print()

# iteração
for carro, valor in zip_carros_valores:
    if valor > 100000:
        print(f'{carro:7}| R$ {valor:9}')
