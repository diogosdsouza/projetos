#Melhorando a estrututa do banco de dados


drop database cadastro; # drop = Este comando apaga banco de dados e tabelas (não colunas) /// qualquer comando da para executar com Ctrl + Enter

create database cadastro
default character set utf8
default collate utf8_general_ci;    #esses utf8 é para adicionar letras com acentuação no código, porque o portugues tem acento e não vem por padrão no MySQL. Se não colocar isso,
									#ele fica com os caracteres como se fosse de outro pais (EUA por exemplo)


use cadastro;

create table `pessoas` (						#quando coloca o nome no banco, tabela ou coluna entre crases, ele permite um nome com espaços, acentos e etc
id int not null auto_increment,					#auto_increment = insere o valor automaticamente (1, 2, 3, 4, 5...) conforme for cadastrando as pessoas
nome varchar (30) not null,						#not null = campo obrigatório
nascimento date,
sexo enum ('M','F'),							#enum e set são do tipo coleção, eles obrigam a escolher uma das alternativas
peso decimal (5,2),								#decimal (5,2) significa que o número terá 5 casas e que as últimas 2 serão após a vírgula. Isso economiza espaço e deixa o nº mais preciso (Exemplo 102,35Kg).
altura decimal (3,2),							#decimal (3,2) exemplo 1,75m
nacionalidade varchar (20) default 'Brasil',	#default 'Brasil' = se alguém deixar em branco ele preenche com Brasil automanticamente
primary key (id)								#primary key = define a chave primaria da tabela (cpf por exemplo)
) default charset utf8;							#aplicando a configuração do português descrita acima


