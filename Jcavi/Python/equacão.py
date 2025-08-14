'''
Este programa calcula as raízes reais de uma equação de segundo grau

autor: Diogo
data: 08/11/2022

'''
import math

a = float(input("Digite o valor de a: "))
b = float(input("Digite o valor de b: "))
c = float(input("Digite o valor da variável c: "))

if a==0:
    if b==0:
        print("Não tem solução")
    else:
        x= -c/b
        print("x =",x)
    #fim se
else:
    delta= b*b-4*a*c
    if delta<0:
        print("Não tem solução")
    elif delta==0:
        x= -b/(2*a)
        print("x =",x)
    else:
        x1= (-b-math.sqrt(delta))/(2*a)
        x2= (-b+math.sqrt(delta))/(2*a)
        print("x1 = %.2f"%x1)
        print("x2 = %.2f"%x2)
    #fim se
#fim se
print("FIM DO PROGRAMA")