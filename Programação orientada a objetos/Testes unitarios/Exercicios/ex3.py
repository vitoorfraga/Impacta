# Preencha uma lista com 5 nomes de pessoas, informados pelo usuário.
# Criar uma função que recebe como parâmetro de entrada a lista e uma posição (índice) dessa lista e retorna o nome que está nessa posição.
# Essa função deve gerar e tratar uma exceção do tipo IndexError caso o índice não exista na lista.

def verificar(clientes_nomes, indice):
    try:
        print(clientes_nomes[indice])
        assert 45
    except IndexError:
        print('UEPA!!! Index erro.')


clientes_nomes = []
for i in range(2):
    nome = input(f'Digite o nome {i+1}º nome: ')
    clientes_nomes.append(nome)

indice = int(input(f'Digite o índice que será pesquisado: '))

verificar(clientes_nomes, indice)
