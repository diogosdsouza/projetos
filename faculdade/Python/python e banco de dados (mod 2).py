import sqlite3 as conector

try:
    # Abrindo a conexão e colocando o cursor
    conexao = conector.connect("banco criado pelo python.db")
    cursor = conexao.cursor()

    # Execução de um comando: SELECT... CREATE...
#    comando = '''CREATE TABLE Pessoa (
#                    cpf INTEGER NOT NULL,
#                    nome TEXT NOT NULL,
#                    nascimento DATE NOT NULL,
#                    oculos BOOLEAN NOT NULL,
#                    PRIMARY KEY (cpf)
#                    );'''

#    comando = '''CREATE TABLE Marca (
#                    id INTEGER NOT NULL,
#                    nome TEXT NOT NULL,
#                    sigla CHARACTER(2) NOT NULL,
#                    PRIMARY KEY (id)
#                    );'''

#    comando = '''CREATE TABLE Veiculo (
#                    placa CHARACTER(7) NOT NULL,
#                    ano INTEGER NOT NULL,
#                    cor TEXT NOT NULL,
#                    proprietario INTEGER NOT NULL,
#                    marca INTEGER NOT NULL,
#                    PRIMARY KEY (placa),
#                    FOREIGN KEY(proprietario) REFERENCES Pessoa(cpf),
#                    FOREIGN KEY(marca) REFERENCES Marca(id)
#                    );'''

    # Adicionar coluna
#    comando = '''ALTER TABLE Veiculo
#                    ADD motor REAL;'''

    # Adicionar dados
    comando = '''INSERT INTO Pessoa (cpf, nome, nascimento, oculos)
                    VALUES (12345678900, 'João', '2000-01-31', 1);'''


    cursor.execute(comando)


    # Efetivação do comando
    conexao.commit()

except conector.DatabaseError as erro:
    print("Erro de banco de dados", erro)

# Fechando as conexões
cursor.close()
conexao.close()