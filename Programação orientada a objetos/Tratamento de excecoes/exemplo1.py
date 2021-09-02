try:
    a = int(input('Primeiro número: '))
    b = int(input('Segundo número: '))
    c = a / b
    print(f'Resultado da divisão: {c}')
except ZeroDivisionError:
    print('Ocorreu uma divisão por zero')
except ValueError:
    print('O valor informado não é um número inteiro')
