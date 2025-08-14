#### VIEWS DE BANCO DE DADOS ####
#VIEWS são constituídas de SELECTS e são chamadas de virtual tables.alter
#as VIEWS acessam as informações das tabelas físicas e tabelas reais, chamadas de based tables


#Vamos construir uma VIEW fazendo join da consulta das tabelas CADASTRO e PRODUTOS:
create or replace view cadastro_produtos as    #AS = iniciar    CREATE OR REPLACE = para criar ou refazer
select nome_cadastro,nome_produtos,quantidade,valor,CPF
from cadastro
join produtos on
cadastro.id_cad = produtos.id_prod
order by nome_cadastro

#puxar a VIEW:
select * from cadastro_produtos

#colocar CONDIÇÃO na VIEW (EXEMPLO):
where quantidade>20


#ver PROCESSOS no banco de dados:
show processlist


##### ÍNDICES no banco de dados #####

#ÍNDICES de banco de dados servem para otimizar consultas em cima de tabelas que
#sofrem muitas consultas ou levam tempo para completar a consulta

#Atuam como uma PRIORIDADE que o SGBD aplica para campos que possuem índices



#Criar ÍNDICE (INDEX) à tabela que já existe:
create table cliente(
id_cliente integer not null auto_increment,
cod_cliente varchar (10),
nome varchar(50),
sobrenome varchar(50),
CPF varchar(11),
d_cadastro date,
primary key(id_cliente),
index ind_cod_cliente(cod_cliente)  #ÍNDICE
);



#Adicionar ÍNDICE (INDEX) a uma tabela já existente:
alter table cliente add index ind_nome_cliente(nome)



##### EXPORTAR e IMPORTAR dados do banco em formato CSV #####


###EXPORTAR TABELA:
select * from produtos into outfile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/lista_produtos.csv'
fields terminated by ';'enclosed by '''';


#Barra de diretórios:

# \ windows
# / linux


#Propriedades de uma VARIÁVEL:
show variables like "secure_file_priv"


#Criar a tabela que vai receber os dados importados:
create table importvendas(
codigopedido int(10),
emailcliente varchar(100),
codigocliente integer(10),
qtd integer(10),
codigoproduto integer(10),
categoriaproduto varchar(50),
primary key(codigopedido)
);


#Importar os dados do arquivo:
load data infile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/clientes.csv'
into table importvendas fields terminated by ';' lines terminated by '\n'
ignore 1 rows;   #ignorar primeria linha (cabeçalho)

select * from importvendas