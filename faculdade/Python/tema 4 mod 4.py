'''
TEMA 4 MÓDULO 4

Exercícios de programação orientada a objetos


EXERCÍCIO: 

Criar classe veiculo com atributos "velocidade máxima" e "quilômetros por litro

Criar classe onibus que herda as variáveis e métodos (def) de "veiculo"

Modificar a classe onibus para fornecer a quantidade de assentos
'''

class veiculo:
    def __init__(self, velocidade_max, quilometro_litro):
        self.velocidade_max = velocidade_max
        self.quilometro_litro = quilometro_litro

    def print(self):
        print(f'velocidade máxima = {self.velocidade_max}')
        print(f'quilometros por litro = {self.quilometro_litro}')


class onibus(veiculo): #para herdar basta colocar o nome da classe
    def capacidade_assentos(self, capacidade=70):
        print(f'A quantidade máxima de assentos do veículo é {capacidade}')


onibus_escolar = onibus(120,8)
carro = veiculo(int(input(("digite a velocidade máxima do carro: "))),int(input(("digite quantos km/L ele faz: "))))
#dá para colocar input na classe :)

carro.print()
onibus_escolar.print()
onibus_escolar.capacidade_assentos()