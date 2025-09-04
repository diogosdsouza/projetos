'''
Este programa lê o nome do funcionário de uma empresa e seu salário.
Logo a seguir faz um acréscimo de 20% para salários abaixo de 2 mil, acréscimo de 15%
para salários acima de 2 mil e nenhum acréscimo para salários acima de 5 mil reais.
Após o reajuste salarial, imprimir o nome dos funcionários com seu salário líquido, com o desconto de 8%
de FGTS.

autor: Diogo
data: 29/11/2022
'''

funcionarios=[]
salarios=[]

print("MENU")
print("1- Inserir a lista de funcionários e seus vencimentos: ")
print("2- Listar todos os funcionários")
print("3- Aplicar o reajuste salarial")
print("4- SAIR DO PROGRAMA")

opcao=int(input("Digite sua opção: "))

while opcao != 4:
    if opcao==1:
        nome=input("Digite o nome do funcionário - FIM para sair: ")
        while nome != 'FIM':
            funcionarios.append(nome)
            valor=float(input("Digite o salário: "))
            salarios.append(valor)
            nome=input("Digite o nome do funcionário - FIM para sair: ")
        #fim while
    elif opcao==2:
        for i in range(len(funcionarios)):
            print(funcionarios[i],"R$ %.2f"%salarios[i])
        #fim for
    elif opcao==3:
        for i in range(len(funcionarios)):
            if salarios[i]<2000:
                salarios[i]=salarios[i]*0.2+salarios[i]
            elif salarios[i]>=2000 and salarios[i]<5000:
                salarios[i]=salarios[i]*0.15+salarios[i]
            #fim if
        #fim for
    else:
        input("Opção inválida")
    #fim if
    print("MENU")
    print("1- Inserir a lista de funcionários e seus vencimentos: ")
    print("2- Listar todos os funcionários")
    print("3- Aplicar o reajuste salarial")
    print("4- SAIR DO PROGRAMA")

    opcao=int(input("Digite sua opção: "))
#fim while
print("FIM DO PROGRAMA")
