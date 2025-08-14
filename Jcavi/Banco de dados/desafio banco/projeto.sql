create table alunos(
id_aluno integer not null auto_increment,
nome_aluno varchar (50) not null,
sobrenome varchar (50) not null,
serie varchar(50) not null,
rg varchar(7) not null,
primary key (id_aluno)
);

create table livros(
id_livro integer not null auto_increment,
nome_livro varchar(50) not null,
autor varchar (50) not null,
qtd_livros int,
primary key(id_livro)
);


create table aluguel(
id_aluguel integer not null auto_increment,
id_aluno integer not null,
id_livro integer not null,
nome_aluno varchar(50) not null,
nome_livro varchar (50) not null,
qtd_alugados int,
primary key (id_aluguel)
);


#FOREIGN KEYS:

alter table aluguel add constraint fk_aluno_aluguel
foreign key(id_aluno) references alunos(id_aluno);

alter table aluguel add constraint fk_livro_aluguel
foreign key(id_livro) references livros(id_livro);



#INSERTS:

insert into alunos(nome,sobrenome,serie,rg)
values ("Arthur","Soares","6","9876543");
select * from alunos


insert into livros(nome_livro,autor,qtd_livros)
values ("historia","velhinho","6");
select * from livros



#TRIGGERS:


delimiter $

create trigger aluguel_insert after insert on aluguel
for each row
begin
update livros set qtd_livros = qtd_livros - new.qtd_alugados
where id_livro = new.id_livro;
end$

create trigger aluguel_delete after delete on aluguel
for each row
begin
update livros set qtd_livros = qtd_livros + old.qtd_alugados
where id_livro = old.id_livro;
end$

delimiter $


insert into aluguel(id_aluno,id_livro,qtd_alugados)
values("1","3",1)


select * from aluguel
select * from livros