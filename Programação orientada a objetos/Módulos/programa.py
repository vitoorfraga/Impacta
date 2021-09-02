# Importação absoluta
#import math

# print(mathsqrt(20))  # Raiz quadrada
# print(math.factorial(5))


# Importação relativa
from math import sqrt as raiz_quadrada, factorial
# as Renomeia a função

from random import randint

# Meu modulo
from arquivo import soma, media_lista

print(raiz_quadrada(20))  # Raiz quadrada
print(factorial(5))

print(randint(1, 30))

print(soma(3, 6))
print(media_lista([4, 6, 78, 9]))
