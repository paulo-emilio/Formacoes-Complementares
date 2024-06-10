import numpy as np

km = np.loadtxt(fname='../data/carros-km.txt', dtype=int)  # fname='nome do arquivo' 'dtypy = tipo' (o default é float)

dados = [
    ['Rodas de liga', 'Travas elétricas', 'Piloto automático', 'Bancos de couro', 'Ar condicionado',
     'Sensor de estacionamento', 'Sensor crepuscular', 'Sensor de chuva'],
    ['Central multimídia', 'Teto panorâmico', 'Freios ABS', '4 X 4', 'Painel digital', 'Piloto automático',
     'Bancos de couro', 'Câmera de estacionamento'],
    ['Piloto automático', 'Controle de estabilidade', 'Sensor crepuscular', 'Freios ABS', 'Câmbio automático',
     'Bancos de couro', 'Central multimídia', 'Vidros elétricos']
    ]

acessorios = np.array(dados)
dimensao_km = km.shape
dimensao_acessorios = acessorios.shape  # (3, 8) 3 linhas com 8 colunas
