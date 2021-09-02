# Preencha uma lista com 10 números digitados pelo usuário e exiba:
# o maior número da lista
# o menor número da lista
# a quantidade de números pares contidos na lista
# a média dos números contidos na lista
# todos os números menores do que a média calculada no item anterior
import random

lista = []
menores_media = []
for i in range(5):
    num = random.randint(1, 100)
    lista.append(num)

print(f"Lista gerada: {lista}")

cont = 0
if num % 2 == 0:
    cont += 1
    print(f"A quantidade de números pares: {cont}")

maior = max(lista)
print(f"O maior número é: {maior}")

menor = min(lista)
print(f"O menor número é: {menor}")


media = sum(lista) / len(lista)
print(f"Média: {media}")

for a in lista:
    if a < media:
        print(f"Menor que a média: {a}")
