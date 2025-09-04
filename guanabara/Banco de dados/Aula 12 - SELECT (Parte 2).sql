# SELECT (parte 2)

#Se o nome da tabela / coluna / registro tiver espaço, acento e etc, precisa colocar crase (``) ao inves de aspas simples ('')
#para referenciá-los nos comandos


#USANDO O OPERADOR LIKE
#like no SQL = semelhante
#like não liga para maiúscula e minúscula, nem para acentos


### WildCards = para fazer buscas com caracteres aleatórios ###
# % = alguma coisa ou nada
# _ = 1 caractere qualquer, mas é obrigado a ter 1



select * from cursos
where nome like 'A%';		#cursos que começam com A. O "%" no valor, quando é like ele significa um coringa (qualquer conjunto de caracteres, incluindo nada)
#semelhante a A + alguma coisa ou nada


select * from cursos
where nome like '%A';		#cursos que terminam com A



#Se colocar o % no início, ele traz = A + alguma coisa ou nada
#Se colocar o % no final, ele traz = alguma coisa ou nada + A
#Se colocar o % no início E no final = texto que contém A
#Se colocar o % no meio, ele traz = A + alguma coisa ou nada + A


select * from cursos
where nome like '%A%';			#cursos que contém A no nome


select * from cursos
where nome not like '%A%';		#cursos que NÃO contém A no nome


select * from cursos
where nome like 'PH%P%';		#exemplo



select * from gafanhotos
where nome like '%s_lva%';		#nome q tem --> alguma coisa ou nada + S + algum caractere + lva + alguma coisa ou nada




#comando distinct = remover duplicados

select distinct nacionalidade from gafanhotos		#trouxe as nacionalidades da tabela gafanhotos, sem duplicações
order by nacionalidade;


select distinct carga from cursos					#trouxe as cargas da tabela cursos, sem duplicações
order by carga;







### FUNÇÕES DE AGREGAÇÃO ###
# Servem para selecionar ou totalizar/contar alguma coisa
# Só mostram o primeiro valor. Para mostrar todos, é na função de agrupamento (próximas aulas)



#COUNT (CONTAR)
select count(*) from cursos;				#conta todos os cursos da tabela cursos (quantidade)

select count(*) from cursos
where carga > 40;							#mostrar quantos cursos tem carga maior que 40



#MAX (MÁXIMO)
select max(carga) from cursos;				#mostrar qual a maior carga dos cursos

select max(carga) from cursos
where ano = '2016';							#mostrar qual a maior carga dos cursos de 2016



#MIN (MÍNIMO)
select min(totaulas) from cursos
where ano = '2016';							#mostrar o curso que menos teve aulas em 2016

select nome, min(totaulas) from cursos		#mostrar o nome do curso que menos teve aulas em 2016
where ano = '2016';



#SUM (SOMA)
select sum(totaulas) from cursos			#somar os valores da coluna "totaulas", só onde o ano é 2016
where ano = '2016';



#AVG (MÉDIA)
select avg(totaulas) from cursos			#mostrar a média dos valores da coluna "totaulas", considerando apenas os cursos que o ano é 2016
where ano = '2016';







