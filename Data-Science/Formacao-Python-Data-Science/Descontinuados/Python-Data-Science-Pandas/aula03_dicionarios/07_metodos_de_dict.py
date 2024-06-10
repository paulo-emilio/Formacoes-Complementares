dados = {'Jetta Variant': 88078.64, 'Crossfox': 72832.16, 'DS5': 124549.07}

# add chave e valor
dados.update({'Passat': 106161.94})
print(dados)

print()
# alterar valor
dados.update({'Passat': 100666.69, 'Fusca': 20000})  # de quebra add o Fusca
print(dados)

# copy() de dict
dadosCopy = dados.copy()
print()
del dadosCopy['Fusca']
print(f'dadosCopy: {dadosCopy}')
print(f'dados:     {dados}')
print()

# pop()
print(dados.pop('Passat'))  # retorna o valor da chave, e deleta
print(dados)

'''dados.pop('Passat')'''  # tentando deletar chave que não existe, gera um erro

print(dados.pop('Passat', '\nChave não encontrada'))  # retorna o valor da chave e a deleta se encontrada,
                                                      # se não, retorna: '\nChave não encontrada'

# clear()
dadosCopy.clear()
print(f'\ndadosCopy.clear: {dadosCopy}')
