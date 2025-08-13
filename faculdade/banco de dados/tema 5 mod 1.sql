# BASE PARA FACULDADE

create table alunos(
codigoaluno int not null,
nome varchar(90) not null,
sexo varchar(50) not null,
dtnascimento date not null,
email varchar(50) null,
constraint aluno_pk primary key (codigoaluno) #para criar a chave primaria
);

insert into alunos (codigoaluno,nome,sexo,dtnascimento,email) values (1, 'José Francisco Terra', 'M', '1989-10-28','gft@gmail.com');
insert into alunos (codigoaluno, nome, sexo, dtnascimento, email) values (2, 'Andrey Costa Filho', 'M', '1999-10-20','andreycf@gmail.com');
insert into alunos (codigoaluno, nome, sexo, dtnascimento, email) values (3, 'Patrícia Torres Loureiro', 'F', '1980-10-20','ptorres@gmail.com');
insert into alunos (codigoaluno, nome, sexo, dtnascimento, email) values (4, 'Carla Maria Maciel', 'F', '1986-11-20',null);
insert into alunos (codigoaluno, nome, sexo, dtnascimento, email) values (5, 'Leila Santana Costa', 'F', '2001-11-28',null);


#EXEMPLO 1:
select * from alunos

#EXEMPLO 2:
select codigoaluno as "Matrícula",
nome as "Nome_do_discente",
dtnascimento as "Data_de_nasciemnto"
from alunos;

#FUNCÕES DE DATA:
select
	current_date as 'Data atual',
	current_time as 'Hora atual',
	current_timestamp as 'Data e hora atual';

#FUNÇÕES DE RESUMO:
select
	count(*) as 'Numero de alunos'
from alunos;


#CONCATENAÇÃO:
select concat(codigoaluno," - ",nome) as "Código e nomes" from alunos


#CRIAR VIEW:
create view valunos as select * from alunos

#USANDO A VIEW: 
select * from valunos