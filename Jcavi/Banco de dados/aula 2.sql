#continuação do código anterior
select * from cadastro;

#Comando ALTER faz uma alteração estrutural de uma tabela

#Adicionar o campo CEP na tabela cadastro:
alter table cadastro add column CEP varchar(10) after cpf

update cadastro set cep= '111111'
where id_cad = 3 or id_cad = 6




#ORDER BY ordena uma coluna, se for texto é ordem alfabética, se for número é por ordem 123
select nome, sobrenome from cadastro
order by nome

select nome, sobrenome from cadastro
order by nome desc #decrescente




#Vamos usar o where (onde) que utiliza uma condição
select nome, sobrenome from cadastro
where nome ='Diogo'

select nome, sobrenome from cadastro
where nome != 'Diogo'

select id_cad, nome, sobrenome from cadastro
where id_cad > 3




#Busca coringa
select nome, sobrenome from cadastro
where nome like 'J%' #LIKE significa que começa com




#Consultas lógicas OR(ou) AND(e) NOT(negação)
select nome, sobrenome from cadastro
where nome = 'Diogo' or sobrenome = 'Souza' #um ou o outro

select nome, sobrenome from cadastro
where nome = 'Diogo' and sobrenome = 'Souza' #um e o outro (tem que ter os dois)

select nome, sobrenome from cadastro
where not nome = 'Diogo' #todos menos o Diogo




#Cláusulas in, not in e between
select id_cad, nome, sobrenome from cadastro
where id_cad in (1,3) #trazer apenas o 1 e 3

select id_cad, nome, sobrenome from cadastro
where id_cad not in (1,3) #trazer todos menos 1 e 3

select id_cad, nome, sobrenome from cadastro
where id_cad between 1 and 4 #todos entre 1 e 4




#Distinct trás apenas os valores distintos (não repetidos)
select distinct sobrenome from cadastro




#Vamos criar a nossa segunda tabela e criar os relacionamentos

create table produtos(
id_prod integer not null auto_increment,
nome varchar(50) not null,
valor float not null,
quantidade int(11) not null,
id_cad integer not null, #CHAVE ESTRANGEIRA
primary key (id_prod)
);

select * from produtos


#Vamos criar a constraint, que é a interligação física das tabelas
alter table produtos add constraint fk_cadastro_produtos
foreign key(id_cad)
references cadastro(id_cad)



#Subconsulta ou SUBSELECTS = é um select dentro de outro select
select nome, sobrenome from cadastro
where id_cad in (select id_cad from produtos where id_cad);
#Busca os nomes e sobrenome dos id da tabela PRODUTOS


select nome, sobrenome from cadastro
where id_cad not in (select id_cad from produtos where id_cad);
#Busca os nomes e sobrenomes dos id que NÃO estão na tabela PRODUTOS


#Select com junção de duas tabelas:
select nome,(select nome from cadastro where id_cad = produtos.id_cad) 
from produtos


#Criando ALIAS(AS) nos campos para mudar o nome das colunas:
select nome as Produtos,(select nome from cadastro where id_cad = produtos.id_cad) as Compradores
from produtos



######### Cláusula Join #########

#SELECT SEM JOIN
select nome_cadastro, nome_produtos, sobrenome, valor, quantidade
from cadastro, produtos
where cadastro.id_cad = produtos.id_cad
order by quantidade
#Não funcionou porque ambas as tabelas possuem a coluna nome

#Para corrigir o problema vamos renomear os nomes do campos das tabelas
alter table cadastro change nome nome_cadastro varchar(50);
alter table produtos change nome nome_produtos varchar(50);


#SELECT COM JOIN (juntando)
select nome_cadastro, nome_produtos, quantidade from produtos 
join cadastro on produtos.id_cad = cadastro.id_cad
order by nome_cadastro

#O JOIN é recomendado para a relação de 2 ou mais tabelas

#JOINS para análise: LEFT JOIN e RIGHT JOIN
#Compara valores da esquerda com a direita e da direita com a esquerda (junta as tabelas)


#LEFT JOIN
select * from cadastro
left join produtos on produtos.id_cad = cadastro.id_cad

#RIGHT JOIN
select * from produtos
right join cadastro on produtos.id_cad = cadastro.id_cad