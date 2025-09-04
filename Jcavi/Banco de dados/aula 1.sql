-- comentário
# comentário
#Vamos criar uma base de dados com comando DDL

create database basedados


#Vamos criar a primeira tabela chamada cadastro com o comando DDL create
#integer = int

create table cadastro(
id_cad integer not null auto_increment, #auto_increment para passar a próxima pessoa automaticamente
nome varchar(50) not null,
sobrenome varchar(50) not null,
cpf varchar(11) not null,
primary key(id_cad) #ultima linha não vai vírgula
);


#Utilizando o comando DML Insert para criar um registro na tabela cadastro

insert into cadastro (nome,sobrenome,cpf)
values('Diogo','Souza','12345678910');


#Vamos executar um comando DQL para consultar os registro da tabela

select * from cadastro;

select nome,sobrenome from cadastro

#truncate cadastro; --> para deletar todos os registros da tabela


#Sempre que vamos apagar ou fazer um update em algum registro de uma tabela precisamos ser
#específicos utilizando cláusula WHERE e passando campos de valores únicos

delete from cadastro where id_cad = 2


#Update = atualizando dado:

update cadastro set sobrenome = "Souza" #trocar tal
where sobrenome = "Soares" #por tal