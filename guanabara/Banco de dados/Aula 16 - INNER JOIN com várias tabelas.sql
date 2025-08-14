# INNER JOIN com várias tabelas

#FOREING KEY (Chave Estrangeira) serve principalmente para relacionar uma tabela com a outra de modo que não seja possível apagar um dado que está relacionado a outra tabela
#ou que esse dado se altere nas duas ou mais tabelas de forma simultânea.

# Usar o INNER JOIN para relacionar tabelas de modo MUITOS PARA MUITOS


#Para fazer a conexão MUITOS PARA MUITOS, precisamos criar uma tabela que serve exclusivamente para a conexão das duas tabelas.
CREATE TABLE gafanhoto_assiste_curso (
	id int NOT NULL AUTO_INCREMENT,
	data date,
	idgafanhoto int,											#tem q ter o mesmo tipo do id da tabela gafanhotos
	idcurso int,												#tem q ter o mesmo tipo do id da tabela cursos
	PRIMARY KEY (id),											#transformando o id dessa tabela em chave primária
	FOREIGN KEY (idgafanhoto) REFERENCES gafanhotos(id),		#declarando que o idgafanhoto é na verdade o id dos gafanhotos da tabela gafanhotos
	FOREIGN KEY (idcurso) REFERENCES cursos(idcurso)			#declarando que o idcurso é na verdade o id dos cursos da tabela curso
) DEFAULT CHARSET = utf8;



insert into gafanhoto_assiste_curso values						#cadastrando cursos para os gafanhotos
(default, '2014-03-01', '1', '2');


### INNERJOIN com duas tabelas ###
select *
from gafanhotos g join gafanhoto_assiste_curso a		#ligação entre as duas, para puxar dados de ambas
on g.id = a.idgafanhoto;								#relacionando a coluna que na verdade é a mesma nas duas tabelas


### INNERJOIN com três tabelas ###
select *
from gafanhotos g
join gafanhoto_assiste_curso a on g.id = a.idgafanhoto
join cursos c on c.idcurso = a.idcurso;					#é necessário usar dois JOINs para ligar as duas tabelas na tabela central (gafanhoto_assiste_curso)
														#aí depois quando puxa, ele pega os dados das três



#Consultando apenas o nome da pessoa e nome do curso (pegando da tabela gafanhoto_assiste_curso)
select g.nome, c.nome
from gafanhotos g
join gafanhoto_assiste_curso a on g.id = a.idgafanhoto
join cursos c on c.idcurso = a.idcurso;






