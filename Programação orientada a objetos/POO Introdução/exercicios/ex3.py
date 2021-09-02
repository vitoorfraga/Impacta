class Televisao:
    # Atributos
    def __init__(self):
        self.canal = None
        self.volume = 0

    # Métodos
    def aumentar_volume(self):
        self.volume += 1

    def diminuir_volume(self):
        self.volume -= 1

    def alterar_canal(self, canal):
        self.canal = canal


tv = Televisao()
tv.alterar_canal(5)
tv.aumentar_volume()

print(f'A tv está no canal {tv.canal}')		# A tv está no canal 5
print(f'A tv está no volume {tv.volume}')
