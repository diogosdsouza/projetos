# TEMA 5 MÓDULO 2

# WHERE = DECLARAR CONDIÇÃO 
# OPERADORES:
# 		< 		menor
# 		<= 		menor ou igual
# 		> 		maior
# 		>= 		maior ou igual
# 		= 		igual
# 	 <> ou != 	diferente
# 		and		e 
# 		or		ou
#		not		não
# 		is 		é
# 		in 		no negócio
# 	  between 	entre
# 		like	para buscar string

# ORDER BY = ORDERNAR PELA COLUNA X


#EXEMPLO 1:
select nome from aluno where sexo="F"


#EXEMPLO 2  WHERE com LIKE:
select nome from aluno
where nome like "%Costa%"  # % significa que não importa o conteúdo localizado antes e depois da string


#EXEMPLO 3 WHERE com LIKE:
select nome from aluno
where nome like "_A%"  #Puxou os nomes que posssuem o A na segunda letra


#EXEMPLO 4 WHWRE com LIKE: contando quanto emails tem
select count(*) from aluno
where email like "%@gmail.%"


#EXEMPLO 5 com ORDER BY:
select codigoaluno, nome
from aluno
order by nome