'''
TEMA 4 MÓDULO 2
'''

class conta:
    def __init__(self, numero, cpf, nomeTitular, saldo): #_init_=criar atributos
        self.numero = numero  #self.numero = atributo / numero = objeto
        self.cpf = cpf
        self.nomeTitular = nomeTitular
        self.saldo = saldo
        self.extrato = Extrato()
    
    def depostitar(self,valor):  #def = criar métodos (manipular atribustos)
        self.saldo += valor
        self.extrato.transacoes.append(["DEPOSITO", valor])

    def sacar(self,valor):
        if self.saldo < valor:  #existe if e else no def
            return False
        else:
            self.saldo -= valor
            self.extrato.transacoes.append(["SAQUE", valor])
            return True


    def transfereValor(self, contadestino, valor):
        if self.saldo < valor:
            return "Não existe saldo suficiente"
        else:
            contadestino.depositar(valor)
            self.saldo -= valor
            self.extrato.transacoes.append(["TRANSFERENCIA", valor]) 
            return "Transferencia Realizada"



class Extrato:     #uma composição de conta, para armazenar as transações
    def __init_(self):
        self.transacoes = []

    def extrato(self, numeroconta):
        print(f"Extrato : {numeroconta} \n")
        for p in self.transacoes:
            print(f"{p[0]:15s} {p[1]:10.2f} {p[2]:10s}")


def main():  #utilizando o class
    c1 = conta(1,"132.293.339-18","Diogo",100000) # Objeto sendo instanciado
    c2 = conta(2,"132.293.399-59","Arthur",2)  #Pode-se criar mais de uma conta
    print (f"Nome do titular da conta 1: {c1.nomeTitular}")
    print (f"Número da conta 1: {c1.numero}")
    print (f"CPF do titular da conta 1: {c1.cpf}")
    print (f"Saldo da conta 1: {c1.saldo}")
    print (f"Nome do titular da conta 2: {c2.nomeTitular} ")

if __name__ == "__main__":  #para ativar a função main()
    main()