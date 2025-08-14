
#### AULA 4 ####

#### FUNÇÔES ####

#Funções em banco de dados servem para executar determinadas ações ou tarefas
#para serem compiladas e armazenadas no banco de dados sempre que precisamos execulata-la
#Funções são usadas para ações ou consultas repetitivas ou diárias



#Criando função em que eu passo o ID  e retorna NOME
delimiter $$
create function retorna_nome(id integer)  #(id integer) = parâmetro da função
returns varchar (50) deterministic
begin   #abre bloco de código

declare nome varchar(50); #declara a variável
select nome_cadastro into nome from cadastro
where id_cad = id;
return nome;
end $$

delimiter $$


#Testar a FUNCTION
select retorna_nome(10)

#FUNCTION para fazer um JOIN
select nome_produtos, retorna_nome(8), quantidade from produtos



#### STORED PROCEDURES #### são programações compiladas dentro do banco de dados que
#executam determinadas ações e atividades automatizadas ou em 2 plano (agendadas)


delimiter $$
create procedure stp_select()
begin
select * from produtos;
end $$
delimiter $$

#chamar uma procedura
call stp_select()


#criar uma PROCEDURE de carga de dados
#onde ele irá copiar os registros da tabela produtos para produtos2

DELIMITER $$
CREATE PROCEDURE st_input_tabela_produtos2()
BEGIN
DECLARE done INT DEFAULT FALSE;
DECLARE INSERE_ID_PROD int default 0;
DECLARE INSERE_NOME varchar(30) default 0;
DECLARE INSERE_Valor float(10,2) default 0;
DECLARE INSERE_Quantidade int default 0;
DECLARE INSERE_ID_CAD int;
DECLARE cursor1 CURSOR FOR SELECT id_prod,nome_produtos,valor,quantidade,id_cad from produtos;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
OPEN cursor1;
read_loop: LOOP #WHILE
IF done THEN
LEAVE read_loop;
END IF;

FETCH cursor1 INTO
INSERE_ID_PROD,INSERE_NOME,INSERE_VALOR,INSERE_QUANTIDADE,INSERE_ID_CAD;
insert into produtos2
Values(INSERE_ID_PROD,INSERE_NOME,INSERE_VALOR,INSERE_QUANTIDADE,INSERE_ID_CAD);
end loop;
CLOSE cursor1;
END $$
DELIMITER $$


#chamando a PROCEDURE:
call st_input_tabela_produtos2()

select * from produtos2
truncate produtos2


#### criar um evento agendado para agendar nossa PROCEDURE ####

set global event_scheduer = on; #ativar o scheduler

#criar uma tarefa agendada para rodar a PROCEDURE a cada 1 minuto:
delimiter $$
create event chama_procedure on schedule every 1 minute
on completion not preserve disable
do
call st_input_tabela_produtos2()


show events #exibe as tarefas agendadas

#ativar a tarefa agendada
alter event chama_procedure enable

truncate produtos2
select * from produtos2




#### TRIGGERS (GATILHOS) ####
#TRIGGERS ou chamada de ações de regra de negócio são condicionadas a executar a partir
#de uma ação determinada. AFTER INSERT, AFTER UPDATE, AFTER DELETE
#São mais rápidas que as procedures e são a prova de falhas (sempre ocorrerá após um evento)

#Vamos criar uma tabela para simular os eventos da trigger (tabelas de vendas)

create table itensvenda(
id_venda int,
id_prod int,
qt_vendida int
);

delimiter $  #quando é dois clientes é $ (1 cifrão)

create trigger itensvenda_insert after insert
on itensvenda
for each row #para cada linha que for inserida
begin
update produtos set quantidade = quantidade - new.qt_vendida
where id_prod = new.id_prod;
end$

create trigger itensvenda_delete after delete
on itensvenda
for each row
begin
update produtos set quantidade = quantidade + old.qt_vendida
where id_prod = old.id_prod;
end$

delimiter $


#testar as TRIGGERS
insert into itensvenda (id_venda,id_prod,qt_vendida) values(1,6,15)


#exibir as TRIGGERS
show triggers

#apagar a TRIGGER
drop trigger itensvenda_insert





#### Vamos criar uma TRIGGER CONDICIONAL ####
#tem uma condição de valores do campo de tabela

#Impletar uma coluna de status de venda
alter table itensvenda add column status_venda varchar(50);


#criar TRIGGER CONDICIONAL
delimiter $

create trigger itensvenda_insert after insert
on itensvenda
for each row
begin
if new.status_venda = 'vendeu' then
update produtos set quantidade = quantidade - new.qt_vendida
where id_prod = new.id_prod;
end if;
if new.status_venda = 'devolveu' then
update produtos set quantidade = quantidade + new.qt_vendida
where id_prod = new.id_prod;
end if;
end $

delimiter $


#Testar as TRIGGERS CONDICIONAIS
insert into itensvenda (id_venda,id_prod,qt_vendida,status_venda) values (1,7,10,'vendeu')

insert into itensvenda (id_venda,id_prod,qt_vendida,status_venda) values (1,7,5,'devolveu')
