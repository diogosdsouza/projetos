# Gerenciando Cópias de Segurança MySQL (backups)

select * from cursos;
select * from gafanhotos;
describe gafanhotos;
describe cursos;


insert into cursos values										#tive que inserir os dados novamente para continuar as aulas
('1','HTML5','Curso de HTML5','40','37','2014'),
('2','Algoritmos','Lógica de Programação','20','15','2014'),
('3','Photoshop','Dicas de Photoshop CC','10','8','2014'),
('4','PHP','Curso de PHP para iniciantes','40','20','2015'),
('5','Java','Introdução à Linguagem Java','40','29','2015'),
('6','MySQL','Banco de Dados MySQL','30','15','2016'),
('7','Word','Curso completo de Word','40','30','2016');



#Para exportar o banco de dados:
# 1. Ir em Server > Data Export. Ali vai aparecer as opções que deseja exportar (qual o banco de dados, tabelas e etc)
# 2. Manter a opção "Dump Structure and Dat", para puxar a estrutura E os dados.
# 3. Objects to Export: mantém os três vazios
# 4. Export Options: selecionar o Export to Self-Contained File, para ir tudo para o mesmo arquivo
# 5. Include Create Schema: Marcar essa opção para já exportar com o banco criado dentro do arquivo
# 6. Clicar em Start Export



#Termo novo: Dump. Significa uma cópia do banco de dados. "Gera um dump dessa base dados pra mim"
# Ele é basicamente o passo a passo dos comandos que fizeram o banco chegar naquele estado.



drop database cadastro; 		#Vamos apagar o banco de dados para utilizar o backup criado



# Para importar o banco de dados:
# 1. Ir em Server > Data Import
# 2. Selecionar Import from Self-Contained File e colocar o arquivo do backup
# 3. Clicar em Start Import



#Testando:
show tables;
describe cursos;
describe gafanhotos;
select * from cursos;
select * from gafanhotos;


