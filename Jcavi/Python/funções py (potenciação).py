'''
Este programa calcula a elevado b e retorna ao programa principal o resultado.

autor: Diogo
data: 06/12/2022
'''
#definição do função
def elevado(a,b):
    return a**b
#programa principal
print("Calcular a elevado b")
x=int(input("Digite a base: "))
y=int(input("Digite o expoente: "))
r=elevado(x,y)
print("O resultado de ",x," elevado ",y," é ",r)