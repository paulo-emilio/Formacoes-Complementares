dados = [
    ['Rodas de liga', 'Travas elétricas', 'Piloto automático', 'Bancos de couro', 'Ar condicionado',
     'Sensor de estacionamento', 'Sensor crepuscular', 'Sensor de chuva'],
    ['Central multimídia', 'Teto panorâmico', 'Freios ABS', '4 X 4', 'Painel digital', 'Piloto automático',
     'Bancos de couro', 'Câmera de estacionamento'],
    ['Piloto automático', 'Controle de estabilidade', 'Sensor crepuscular', 'Freios ABS', 'Câmbio automático',
     'Bancos de couro', 'Central multimídia', 'Vidros elétricos']
]

'''for lista in dados:
    print(lista)
print('-*'*80)'''

'''for lista in dados:
    for item in lista:
        print(item)'''

acessorios = []
for lista in dados:
    for item in lista:
        acessorios.append(item)
print(f'acessorios: {acessorios}')

# possuem alguns acessórios em mais de uma lista, portanto foram duplicados
acessorios = list(set(acessorios))
print(f'acessorios set(): {acessorios}')

# melhor forma de deixar o código
acessorios2 = [item for lista in dados for item in lista]
print(f'acessorios2: {acessorios2}')
