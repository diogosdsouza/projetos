# Modelo Relacional

# É o Relacionamento entre tabelas
# Nome do Diagrama que compõe o esquema do Modelo Relacional = DIAGRAMA ENTIDADE RELACIONAMENTO (Diagrama E-R ou DER)





# Entidade = Tabela
# Atributos = Colunas da Tabela
# Registros = Dados






# REPRESENTAÇÕES #

# ENTIDADE = Retângulo

# RELACIONAMENTO ENTRE ENTIDADES = Losango

# CARDINALIDADE = N
# Exemplo Muito-para-Muitos: um gafanhoto pode assistir vários cursos, então a Tabela cursos recebe um N, pois ela pode ser acessada por diferentes pessoas
# Assim como a Tabela gafanhotos também recebe N, pois as pessoas podem ver diferentes cursos
#
# Exemplo Um-para-Um: Casamento tradicional. Um homem casa apenas com 1 mulher e uma mulher casa apenas com 1 homem
#
# Exemplo Um-para-Muitos: Pai e filhos. Um pai pode ter muitos filhos e um filho só pode ter 1 pai








# CHAVES #

# CHAVE PRIMÁRIA: identificador da tabela (cpf)


# CHAVE ESTRANGEIRA: é a comunicação entre uma tabela e outra. Quando eu pego um dado de outra tabela através do CPF da pessoa por exemplo
#
# Na outra tabela, ela precisa ter a mesma configuração da tabela sua tabela de origem (apenas configuração, o nome pode ser diferente)
#
# Para ter chave estrangeira na Cardinalidade Muitos-para-Muitos, o relacionamento precisa virar uma tabela que recebe chaves estrangeiras das duas tabelas. Exemplo:
# Compra - Recebe cpf do cliente e id do produto





