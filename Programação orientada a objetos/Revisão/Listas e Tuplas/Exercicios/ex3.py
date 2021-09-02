# Preencha duas tuplas com 5 números cada, informados pelo usuário. Concatene as duas tuplas e exiba a tupla resultante.
# Dica: primeiro crie duas listas, e então, converta as listas em tuplas utilizando a função tuple.
# tupla = tuple(lista)		# converte a lista em uma tupla

# Exemplo: Suponha que as tuplas contenham os números:
# (3, 1, 5, 3, 5)
# (5, 5, 7, 3, 1).
# Como resultado, o programa deve gerar a tupla:
# (3, 1, 5, 3, 5, 5, 5, 7, 3, 1).
# _____________________________________

import random

lista1 = []
lista2 = []
for i in range(5):
    num1 = random.randint(1, 100)
    num2 = random.randint(1, 100)

    lista1.append(num1)
    lista2.append(num2)

tupla1 = tuple(lista1)
tupla2 = tuple(lista2)
tupla3 = tupla1 + tupla2

print(f"Tupla 1: {tupla1}")
print(f"Tupla 2: {tupla2}")
print(f"Concatenação: {tupla3}")
