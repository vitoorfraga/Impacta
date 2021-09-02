# Preencha um dicionário com as informações de 5 produtos.
# Utilize o nome do produto como chave e o preço como valor.
# Solicite os dados ao usuário.
# Percorra o dicionário e exiba o nome dos produtos com preço superior a R$ 50.00

# Exemplo:
# Veja um exemplo da estrutura do dicionário.
# {'Caneta': 3.0, 'Pen Drive': 100.0, 'Teclado': 30.0, 'Lápis': 1.50}

produtos = {}
for i in range(2):
    item = input('Nome do item: ')
    preco = float(input('Digite o preço do item: '))

    produtos[item] = preco

print('=== Itens abaixo tem o valor maior que R$ 50,00 ===')
for chave in produtos:
    if produtos[chave] > 50:
        print(chave)

# print(produtos)
