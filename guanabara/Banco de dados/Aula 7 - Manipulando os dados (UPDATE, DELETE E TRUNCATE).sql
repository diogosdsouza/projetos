# Manipulando linhas (UPDATE, DELETE E TRUNCATE)
### Linha, registro e tupla são a mesma coisa (os dados)
# Todos os três comandos (UPDATE, DELETE E TRUNCATE), são DML


use cadastro;

select * from cursos;


insert into cursos values
('1','HTML4','Curso de HTML5','40','37','2014'),
('2','Algoritmos','Lógica de programação','20','15','2014'),
('3','Photoshop','Dicas de Photoshop CC','10','8','2014'),
('4','PGP','Curso de PHP para iniciantes','40','20','2010'),
('5','Jarva','Introdução à Linguagem Java','10','29','2000'),
('6','MySQL','Banco de Dados MySQL','30','15','2016'),
('7','Word','Curso completo Word','40','30','2016'),
('8','Sapateado','Danças Rítmicas','40','30','2018'),
('9','Cozinha','Aprenda a fazer Kibe','40','30','2018'),
('10','Youtuber','Gerar polêmica e ganhar inscritos','5','2','2018');


#Não dá para mexer em várias linhas em 1 comando, mas dá para mexer, dentro de uma linhas, em várias colunas


update cursos				#atualizando o valor da tabela cursos
set nome = 'HTML 5'		#mudar o nome para HTML5
where idcurso = '1';		#onde o idcurso for igual a 1


update cursos
set nome = 'PHP', ano = '2015'		#Atualizou dois valores da mesma linha no mesmo comando
where idcurso = '4';


update cursos
set nome = 'Java', carga = '40', ano = '2015'
where idcurso = '5'
limit 1;							#Garante que o comando vai afetar só uma linha, caso eu tenha digitado o comando errado



update cursos
set ano ='2050', carga = '800'
where ano = '2018';					#desabilitada a configuração "Atualizações Seguras" em Edit > Preferences... > SQL Editor > Safe Updates (desmarcado) para rodar esse comando, pois ele é perigoso



update cursos
set ano ='2018', carga = '0'
where ano = '2050'
limit 1;							#exemplo do limit 1 alterando apenas a primeira linha da tabela com o ano 2050



delete from cursos
where idcurso = '8';				#apagar a linha com id 8



delete from cursos
where ano = '2050'
limit 2;							#apagar as duas primeiras linhas com ano 2050



truncate cursos;					#apagar todas as linhas de uma tabela (menos os nomes das colunas, óbvio)


