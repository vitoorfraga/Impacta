# Preencha uma lista com 10 números digitados pelo usuário. A partir desta lista, gere uma lista com os números pares e outra com os números ímpares.

# Exemplo:
# Suponha que a lista digitada seja: [1, 4, 7, 9, 5, 3, 7, 9, 8, 8].
# Para esta lista, o programa deve gerar as seguintes listas:
# [4, 8, 8]
# [1, 7, 9, 5, 3, 7, 9]

import random


lista = []
par = []
impar = []
for i in range(5):
    num = random.randint(1, 100)
    lista.append(num)

    if num % 2 == 0:
        par.append(num)

    else:
        impar.append(num)

print(f"Lista gerada: {lista}")
print(f"Pares: {par}")
print(f"Impares: {impar}")
