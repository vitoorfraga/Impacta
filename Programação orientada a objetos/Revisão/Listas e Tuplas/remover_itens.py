def remover(num):
    lista = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

    while num in lista:
        lista.remove(num)
    print(lista)
    return lista


num = int(input("Digite um número de 0 - 10: "))

remover(num)
