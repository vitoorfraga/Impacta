# Preencher dicionário com dados informados pelo usúario.

cadastro = {}
# for i in range(4):
#     cpf = int(input("Informar o CPF: "))
#     nome = input("Informe o nome: ")
#     cadastro[cpf] = nome

print(cadastro)

# Dicionario para armazenar o RA de um aluno e uma lista com 5 notas.

alunos = {123456: [10, 9, 7, 5, 10],
          345678: [9.5, 8, 9, 45, 7],
          678521: [8, 7, 6, 5, 10]}

# Exibir lista de alunos
print(alunos[123456])

# Acessar a lista e adicionar um item (adicionar mais uma nota)

alunos[123456].append(9.75)
print(alunos)

# Alterar nota de algum aluno
alunos[123456][0] = 9.5  # Acessa o indice da lista
