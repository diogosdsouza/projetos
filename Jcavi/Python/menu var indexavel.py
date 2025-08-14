'''
Este programa disponibiliza um MENU para permitir ao usuário inserir um elemento no vetor aluno, deletar um aluno, inserir
o aluno em alguma posição, ordernar o vetor e imprimir a lista de alunos.

autor: Diogo
data: 22/11/2022
'''

aluno=[]
cont=0

print("MENU")
print("1- Inserir aluno")
print("2- Colocar o aluno em uma posição")
print("3- Deletar um aluno")
print("4- Listar os alunos")
print("5- Ordenar alunos em ordem alfabética")
print("6- SAIR DO PROGRAMA")

opcao=int(input("Digite sua opção: "))

while opcao !=6:
    if opcao==1:
        x=input("Digite o nome do aluno: ")
        aluno.append(x)
        cont=cont+1
    elif opcao==2:
        pos=int(input("Digite a posição de inserção do aluno: "))
        x=input("Digite o nome do aluno: ")
        aluno.insert(pos,x)
        cont=cont+1
    elif opcao==3:
        pos=int(input("Qual a posição do aluno? "))
        del(aluno[pos])
        cont=cont-1
    elif opcao==4:
        for i in range(cont):
            print(aluno[i])
    elif opcao==5:
        aluno.sort()
    else:
        print("Opção inválida")

    print("MENU")
    print("1- Inserir aluno")
    print("2- Colocar o aluno em uma posição")
    print("3- Deletar um aluno")
    print("4- Listar os alunos")
    print("5- Ordenar alunos em ordem alfabética")
    print("6- SAIR DO PROGRAMA")

    opcao=int(input("Digite sua opção: "))
    
print("FIM DO PROGRAMA")
        
