'''
Este programa manipula com lista.
É disponibilizado um sistema de menu para que o usuário escolha a ação que deseja executar.

Este programa é um sistema acadêmico

autor: Diogo
data: 06/12/2022
'''

lista_alunos=[]

print("MENU")
print("1- Inserção do aluno e da média")
print("2- Tamanho da turma")
print("3- Deletar um aluno")
print("4- Listar a turma")
print("5- SAIR")

opcao=int(input("Digite sua opção: "))

while opcao != 5:
    if opcao==1:
        q=int(input("Digite a quantidade de alunos a serem inseridos: "))
        for i in range(q):
            nome=input("Digite o nome do aluno: ")
            lista_alunos.append(nome)
            media=float(input("Digite a média do aluno: "))
            lista_alunos.append(media)
        #fim for
    elif opcao==2:
        tamanho=len(lista_alunos)
        print("A turma tem ",tamanho//2," alunos")
    elif opcao==3:
        posicao=int(input("Qual a posição do aluno: "))
        del lista_alunos[posicao:posicao+2]
        print(lista_alunos)
    elif opcao==4:
        print(lista_alunos)
    else:
        print("Opção inválida")
    #fim if

    print("MENU")
    print("1- Inserção do aluno e da média")
    print("2- Tamanho da turma")
    print("3- Deletar um aluno")
    print("4- Listar a turma")
    print("5- SAIR")

    opcao=int(input("Digite sua opção: "))
#fim while
print("FIM DO PROGRAMA")
