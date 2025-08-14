#Inserindo Dados na Tabela (INSERT INTO)

#DDL --> comando de criação, alteração ou exclusão para estrutura do banco de dados (banco de dados em si, tabelas e etc).
#DML --> comando para inserção, alteração ou exclusão dos dados armazenados nessa estrutura.

use cadastro;

insert into pessoas
(id,nome,nascimento,sexo,peso,altura,nacionalidade)			#se a ordem for igual a padrão das colunas, não precisa disso
values
(default,'Diogo','2003-08-30','M','68.9','1.72',default),	#tem que ter a mesma ordem que coloquei as colunas em cima
('2','Godofredo','1984-01-02','M','78.5','1.83','Brasil'),
(default,'Maria','1999-12-30','F','55.2','1.65','Portugal'),
(default,'Creuza','1920-12-30','F','50.2','1.65',default),
(default,'Adalgiza','1930-11-02','F','63.2','1.75','Irlanda'),
(default,'Cláudio','1975-04-22','M','99','2.15',default),
(default,'Pedro','1999-12-03','M','87','2',default),
(default,'Janaína','1987-11-12','F','75.4','1.66','EUA');

select * from pessoas;										#consultar a tabela inteira


