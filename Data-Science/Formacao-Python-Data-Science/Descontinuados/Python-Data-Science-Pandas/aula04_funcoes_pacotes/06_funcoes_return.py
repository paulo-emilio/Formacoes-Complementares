def media(lista):
    valor = sum(lista) / len(lista)
    return valor, len(lista)  # retornando 2 valores


num = [1, 2, 3, 4, 5, 6, 7, 8, 9]
media, tamanho = media(num)

print(f'Média: {media} | Tamanho da lista: {tamanho}')
