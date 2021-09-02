# Preencha um dicionário com os dados de 5 alunos.
# Utilize o ra do aluno como chave e uma lista de três notas como valor.
# Solicite os dados ao usuário.
# Percorra o dicionário e exiba a média de cada aluno.

# Exemplo:
# Veja um exemplo da estrutura do dicionário.
# {1901502: [10, 8, 7.5], 2002441: [6, 5, 7.5], 2001332: [5, 8, 9.5]}

alunos = {'123': [10, 6, 10], '456': [9, 5, 7]}

for chave in alunos:
    lista_notas = alunos[chave]
    media = sum(lista_notas) / len(lista_notas)
