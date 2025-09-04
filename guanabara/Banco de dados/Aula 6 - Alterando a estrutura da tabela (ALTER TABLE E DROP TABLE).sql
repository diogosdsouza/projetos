#Alterando a estrutura da tabela (ALTER TABLE E DROP TABLE)


describe pessoas;			#mostrar a estrutura da tabela
select * from pessoas;		#consultar a tabela inteira (com valores)

alter table pessoas
add column profissao varchar (10);					#add = adicionar. o "column" não precisa na verdade, é só para ficar mais didático

alter table pessoas
drop column profissao;								#drop = remover

alter table pessoas
add column profissao varchar (10) after nome;		#adicionar a coluna depois do nome


alter table pessoas
add column codigo int first;						#adicionar a coluna na primeira posição


alter table pessoas
modify column profissao varchar (20) not null;		#modificar a estrutura de um campo (menos o nome dele)


alter table pessoas
change profissao prof varchar (20) not null;		#para mudar o nome do campo (colocar o nome antigo e o novo). Tem que colocar todas as configurações do campo de novo


#Alterando a estrutura da tabela

alter table pessoas
rename to gafanhotos;								#rename to = renomear a tabela inteira


create table if not exists gafanhotos (teste int);	#if not exists = vai criar se não existir a tabela gafanhotos ainda (pode ser aplicado para outros comandos também). nesse caso como já tem ele não criou



create table if not exists cursos (					
nome varchar (30) not null unique,					#unique = não vai deixar criar mais de um curso com o mesmo nome (não é chave primária, ele não identifica o curso)
descricao text,										#text = para textos longos, pode botar vários parágrafos e tal
carga int unsigned,									#unsigned = não deixa o número ser negativo e assim economiza 1 byte para cada registro
totaulas int unsigned,
ano year default '2016'
) default charset = utf8;


describe cursos;
describe gafanhotos;


alter table cursos
add column idcurso int first;						#adicionando idcurso na primeira posição

alter table cursos
add primary key (idcurso);							#definindo o idcurso como chave primaria (não é possível adicionar a coluna já definindo como chave primária em 1 comando)



#CUIDADO# com o alter table e drop table, Banco de dados não tem control Z. Ambos são comando DDL (mexem com a estrutura do banco).

