from modulo import soma, fatorial

try:
    resultado = soma(10, 5)
    assert resultado == 15
    print('Correto')
except AssertionError:
    print('Ocorreu um erro')
