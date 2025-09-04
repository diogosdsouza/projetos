# Chaves estrangeiras e JOIN


# Primeiro ele explica o que é ENGINE. No nosso banco de dados, estamos usando a InnoDB
# O que é ENGINE? Ela é um mecanismo que permite usar seus recursos no SQL

#Principal característica InnoDB = suportar chaves estrangeiras


#Exemplos de máquinas que é possível utilizar:
# MyISAM: um pouco mais antiga. Ela não dava suporte as 4 principais regras de uma boa transação, a ACID
#InnoDB: Suporta ACID
#XtraDB: um pouco mais recente. Suporta ACID

#Transação = toda ação que o banco de dados possa executar
#ACID = 4 principais regras de uma boa transação
#A = Atomicidade: ou faz tudo ou não faz nada
#C = Consistência: não pode ter erros ou inconsistencias
#i = Isolamento: uma execução não pode inteferir em outra que está acontecendo ao mesmo tempo
#D = Durabilidade: a transação deve durar o tempo que for necessário. Um dado não pode sumir do nada, ele fica lá até que seja mexido



# Adicionando a chave estrangeira de cursos na tabela gafanhotos
alter table gafanhotos
add column cursopreferido int; 			#o nome pode ser diferente, mas o tipo tem que ser igual o da outra tabela (int)


# Declarando a coluna como uma chave estrangeira
alter table gafanhotos
add foreign key (cursopreferido)		#declaração da coluna como chave estrangeira
references cursos(idcurso);				#relacionando com a chave primária da tabela cursos


describe gafanhotos;					#chave estrangeira ficou como MUL, é isso mesmo, significa "Múltipla"


select * from gafanhotos;
select * from cursos;


# Cadastrando curso preferido de um gafanhoto
update gafanhotos set cursopreferido = '6' where id = '1';



# Para dar menos trabalho, dá para cadastrar o curso preferido de cada um direto na tabela, dando um select

select * from gafanhotos;						#só alterar direto na tabela e dar um Apply depois




# Tentando apagar um curso que está cadastrado como preferido de alguém

delete from cursos where idcurso = '6';			#ele não deixa


# Tetando apagar um curso que NINGUÉM prefere, ou seja, não possui relação com as outras tabelas

delete from cursos where idcurso = '28';		#aí deu certo


### InnoDB tem ACID e NÃO GERA INCONSISTÊNCIAS ###




### JOIN ###
# O JOIN é o que usamos para consultar a relação criada pela chave estrangeira. Sempre usamos ele no SELECT

select gafanhotos.nome, gafanhotos.cursopreferido, cursos.nome, cursos.ano			#o nome da coluna é assim quando está juntando dados de duas tabelas
from gafanhotos join cursos															#ligação entre as duas
on cursos.idcurso = gafanhotos.cursopreferido;										#relacionando a coluna que na verdade é a mesma nas duas tabelas

### Sempre usar o ON junto com o JOIN, se não ele não pega só o valor que precisa




### TIPOS DE JOIN ###
#Inner JOIN = só trás os valores que tem a relação preenchida (cursopreferido preenchido). Se tiver em branco nem aparece. Se escrever só JOIN ele já considera automaticamente como InnerJOIN

#Outer JOIN = vai trazer todos os dados, independente se tem relação com a outra tabela ou não.

#Left Outer JOIN = trás todos os dados da tabela da esquerda (gafanhotos) independente de tiver relação com a tabela da direita (cursos). Pode ser escrito como Left JOIN também
select gafanhotos.nome, gafanhotos.cursopreferido, cursos.nome, cursos.ano
from gafanhotos left outer join cursos
on cursos.idcurso = gafanhotos.cursopreferido;

#Right Outer JOIN = trás todos os dados da tabela da direita (cursos) independente de tiver relação com a tabela da esquerda (gafanhotos). Pode ser escrito como Right JOIN também
select gafanhotos.nome, gafanhotos.cursopreferido, cursos.nome, cursos.ano
from gafanhotos right outer join cursos
on cursos.idcurso = gafanhotos.cursopreferido;






select g.nome, g.cursopreferido, c.nome, c.ano
from gafanhotos as g join cursos as c												# AS é como se fosse o LET do excel. é para abreviar o nome das tabelas
on c.idcurso = g.cursopreferido;









