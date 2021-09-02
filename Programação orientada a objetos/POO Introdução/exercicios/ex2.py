class Triangulo:
    # Atributos
    def __init__(self, lado_a, lado_b, lado_c):
        self.lado_a = lado_a
        self.lado_b = lado_b
        self.lado_c = lado_c

    # Métodos
    def calcular_parametro(self):
        return self.lado_a + self.lado_b + self.lado_c


a = float(input("Digite o lado A: "))
b = float(input("Digite o lado B: "))
c = float(input("Digite o lado C: "))

triangulo = Triangulo(a, b, c)
print(triangulo.calcular_parametro())
