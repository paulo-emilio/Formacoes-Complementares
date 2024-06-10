nomes_carros = ('Jetta Variant', 'Passat', 'Crossfox', 'DS5')

for item in nomes_carros:
    print(f'Carro: {item}')

# Desmembrando
carro1, carro2, carro3, carro4 = nomes_carros

print(f'\ncarro3: {carro3}')

# pegando só alguns valores da tupla
_, car2, _, car4 = nomes_carros

print(f'\ncar4: {car4}')

# ignorando multiplamente
_, segundo, *_ = nomes_carros

print(f'\nsegundo: {segundo}')
