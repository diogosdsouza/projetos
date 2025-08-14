'''
Este programa é um jogo de advinhação.

Internamnete o programa chuta um valor entre 0 e 9 e aguarda o palpite do usuário. Caso
o palpite do usuário seja um número acima do valor chutado pelo computador, informa ao 
usuário para que o pròximo palpite seja um avlor abaixo. Caso o palpite sej um valor abaixo,
o programa deve informar que o palpite de ver acima.

autor: Diogo
data: 06/12/2022

'''
from random import randint
valor=int(randint(0,9))
palpite=0
tentativa=0
print("Pensei em um número de 0 a 9. Tente acertar!!")
while palpite!=valor:
    palpite=int(input("Digite seu palpite: "))
    tentativa=tentativa+1
    if palpite==valor:
        print("Você acertou!!!")
        print("Tentativas: ",tentativa)
    elif palpite<valor:
        print("Você errou, tente um número maior")
    else:
        print("Você errou, tente um númrero menor")
    #fim if
#fim while
print("FIM DO PROGRAMA")