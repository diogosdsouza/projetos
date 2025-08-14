'''
Este programa apresenta um sistema de MENU para permitir ao usuário selecionar a opção desejada e permitir o cálculo do IMC de uma pessoa.

autor: Diogo
data: 22/11/2022

'''

print("MENU")
print("1 - leitura do nome do atleta")
print("2 - leitura do peso do atleta")
print("3 - leitura da altura do atleta")
print("4 - cáculo do IMC")
print("5 - situação do atleta")
print("6 - SAIR DO PROGRAMA")
opcao=int(input("Digite um número: "))
while opcao !=6:
    if opcao==1:
        atleta=input("Digite o nome do atleta: ")
    elif opcao==2:
        peso=float(input("Digite o peso do atleta: "))
    elif opcao==3:
        altura=float(input("Digite a altura do atleta: "))
    elif opcao==4:
        if peso<0 and altura<0:
            imc=peso/altura**2
        else:
            print("FALTAM DADOS")
    elif opcao==5:
        if imc>=0 and imc<19:
            print("O atleta",atleta,"está muito magro.")
        elif imc>=19 and imc<25:
            print("O atleta",atleta,"está com o peso normal.")
        elif imc>=25 and imc<30:
            print("O atleta",atleta,"está com sobrepeso")
        elif imc>=30 and imc<40:
            print("O atleta",atleta,"está obeso")
        elif imc>=40:
            print("O atleta",atleta,"está com obesidade grave")
        #fim se
    else:
        print("OPÇÃO NÃO PERMITIDA")
    #fim se
    print("MENU")
    print("1 - leitura do nome do atleta")
    print("2 - leitura do peso do atleta")
    print("3 - leitura da altura do atleta")
    print("4 - cáculo do IMC")
    print("5 - situação do atleta")
    print("6 - SAIR DO PROGRAMA")
    opcao=int(input("Digite um número: "))
#fim do laço while
print("FIM DO PROGRAMA")