dados = {'Jetta Variant': 88078.64, 'Crossfox': 72832.16, 'Passat': 106161.94}

# somando valores
print(sum(dados.values()))

# somando valores + 100000
print(sum(dados.values(), start=100000))  # "start=" não necessário
