class Livro:
    def __init__(self, nome, autor, qtd_pag):
        self.nome = nome
        self.autor = autor
        self.qtd_pag = qtd_pag


min_digital = Livro("Minimalismo Digital", "Carl N. P.", 190)

print(
    f'Nome: {min_digital.nome} - Autor: {min_digital.autor} - Quantidade de Páginas: {min_digital.qtd_pag}')
