'''
Classe Cachorro
- Atributos: nome, idade.
- Métodos: andar, comer, latir.
'''


class Cachorro:
    # Atributos
    def __init__(self):
        self.nome = None
        self.idade = None

    # Métodos

    def andar(self, distancia):
        print('O cachorro andou ' + str(distancia) + " Métodos")

    def comer(self):
        print(f'O cachorro de nome {self.nome} comeu')

    def latir(self):
        print('Au au au...')


dog = Cachorro()
dog.nome = "Rex"
dog.idade = 4
print(f'O cachorro de nome {dog.nome} possui a idade de {dog.idade}')

dog.andar(2)
dog.latir()
dog.comer()


meu_cachorro = Cachorro()
meu_cachorro.nome = "Snoopy"
meu_cachorro.idade = 2


meu_cachorro.andar(5)
meu_cachorro.latir()
meu_cachorro.comer()
