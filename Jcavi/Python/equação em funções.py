'''
Este programa calcula as raízes de uma equação de segundo grau definindo funções.



autor: Diogo
data: 06/12/2022
'''

def delta(a,b,c):
    d=b*b-4*a*c
    return d

def primeirograu(a,b):
    t=-b/a
    return t

#início do programa principal

a=float(input("Digite a: "))
b=float(input("Digite b: "))
c=float(input("Digite c: "))

import math #função matemática que tem o pow e o sqrt (usados para calcular raíz)

if a==0:
    if b==0:
        print("Não tem solução")
    else:
        f=primeirograu(b,c)
        print("A raíz calculada é igual a ",f)
    #fim if
else:
    r=delta(a,b,c)
    if r<0:
        print("Não tem solução nos reais")
    elif r==0:
        x=-b/(2*a)
        print("Tenho somente uma raíz = %.2f"%x)
    else:
        x1=(-b+math.sqrt(r))/(2*a)
        x2=(-b-math.sqrt(r))/(2*a)
        print("x1 = %.2f"%x1)
        print("x2 = %.2f"%x2)
    #fim if
#fim if
print("FIM DO PROGRAMA")