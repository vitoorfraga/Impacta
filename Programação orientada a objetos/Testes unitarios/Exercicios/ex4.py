# Crie um dicionário para armazenar uma listagem de alunos.
# Utilize como chave o RA do aluno e como valor o nome do aluno.
# Os dados devem ser informados pelo usuário
# O RA de cada aluno deve ser composto por um número inteiro de exatamente 7 dígitos.
# Caso o RA informado não esteja no formato correto, deve ser gerada uma exceção do tipo ValueError
# Caso o RA informado já exista no dicionário, deve ser gerada uma exceção do tipo TypeError

# Observação: Você pode utilizar o código abaixo como exemplo e alterá-lo para gerar e tratar as exceções solicitadas.

alunos = {}
try:
    for i in range(2):

        ra = int(input('Digite o RA do aluno: '))
        nome = input('Digite o nome do aluno: ')

        # Verificar se chave existe no dicionário
        if ra in alunos:
            raise TypeError
        if (ra <= 999999) or (ra > 7999999):
            raise ValueError
        else:
            alunos[ra] = nome

except ValueError:
    print('AAAAAA! Value Error. Você não digitou um número inteiro')
except TypeError:
    print('UOAOSO!! Type Error Encontrado. Você já adicionou esse item a lista')


print(alunos)
