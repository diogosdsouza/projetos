'''
Este programa le o nome do aluno e três notas e calcula a média do aluno

autor: Diogo
data: 18/10/2022
'''

aluno = input("Digite o nome do aluno: ")
nota1 = float(input("Digite a primera nota: "))
nota2 = float(input("Digite a segunda nota: "))
nota3 = float(input("Digite a terceira nota: "))
media = (nota1+nota2+nota3)/3
print("O aluno",aluno,"tem média",media)