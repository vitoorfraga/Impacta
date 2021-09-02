from ex5 import converte_para_celsius, converte_para_fahrenheit

try:
    resultado = converte_para_fahrenheit()
    print(resultado)
    assert resultado == 80.6
    print('Correto')
except AssertionError:
    print('=== Assert Error ===')
    print('Retornado:', resultado)
    print('Esperado:', 80.6)
except ValueError:
    print('Value Error')
except TypeError:
    print('Type Error')

try:
    resultado2 = converte_para_celsius()
    print(resultado2)
    assert resultado2 == 5.0
    print('Correto')
except AssertionError:
    print('=== Assert Error ===')
    print('Retornado:', resultado2)
    print('Esperado:', 5.0)

except ValueError:
    print('Value Error')
except TypeError:
    print('Type Error')
