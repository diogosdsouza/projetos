# SELECT (parte 1)

# Ele pode ser visto como um DQL (Data Query Language), que significa um grupo de questionamento de dados (opinião Guanabara).


#Primeiro foi importado uma base com bastante informação.


select * from gafanhotos;


select * from cursos			#selecione todas as colunas da tabela cursos
order by nome					#ordenar pelo nome do curso
desc;							#abreviação de descendant = ordenar pelo nome do curso de Z a A
### O desc como comando, é describe. O desc como parâmetro do select, é descendant ###


select * from cursos
order by nome
asc;							#abreviação de ascendant = ordenar pelo nome do curso de A a Z (NÃO FAZ SENTIDO, POIS SE NÃO COLOCAR NADA ELE JÁ FICA ASSIM)



#FILTRAR COLUNAS#

select nome, carga, ano from cursos;		#mostrar somente as colunas nome, carga e ano da tabela cursos



select ano, nome, carga from cursos;		#dá para mudar a ordem das colunas


select ano, nome, carga from cursos
order by ano, nome;								#dá para mudar a ordenação pela coluna que preferir e colocando várias ordenações



#FILTRAR LINHAS (também chamadas de REGISTRO ou TUPLA)#

select nome, carga from cursos			#o campo filtrado não precisa aparecer
where ano = '2016'						#seleciona todos os cursos onde o ano é 2016
order by nome;



#Resultset = resultado de uma consulta ou select

#Query = é uma pergunta /solicitação



select nome, descricao, ano from cursos
where ano <= '2015'							#podemos usar outros operadores relacionais, como o <=
order by ano, nome;



# Operadores relacionais: 	igual (=)	//	diferente (!= ou <>)	//	menor (<)	//	maior (>)	//	menor igual (<=)	//	maior igual (>=)
# Operadores lógicos: between = entre	//	in = é	//	and = e	//	or = ou




select nome, ano from cursos
where ano between '2014' and '2016'					#between = entre / and = E. "Onde é ano está entre 2014 e 2016".
order by ano desc, nome asc;						#cada ordenação pode ter seu próprio sentido (igual no excel)




select idcurso, nome, ano from cursos
where ano in ('2014', '2016', '2020');				#selecionar apenas aqueles anos específicos




# Juntando operadores relacionais e lógicos:

select * from cursos
where carga > 35 and totaulas < 30;				#tem que atender as duas regras juntas

select * from cursos
where carga > 35 or totaulas < 30;				#pode atender a apenas uma das regras ou as duas juntas





