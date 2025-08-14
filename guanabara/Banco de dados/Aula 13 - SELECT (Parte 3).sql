# SELECT (Parte 3)

#Primeiro ele reforça o DISTINCT: retorna uma coluna, mas sem valores duplicados. Exemplo:

select distinct carga from cursos
order by carga;							#vai retornar a lista de cargas sem duplicações





#GROUP BY: agrupar os dados de determinada coluna

select carga from cursos
group by carga;							#isso vai dar o mesmo resultado do DISTINCT, porém agora podemos contar





#GROUP BY com COUNT

select carga, count(*) from cursos
group by carga
order by carga;							#ele vai contar quantos vezes cada valor aparece


select carga, count(*) from cursos
where totaulas = 30
group by carga;							#vai pegar todos os cursos de 30 aulas, agrupa-los pela carga e conta-los





#GROUP BY com COUNT e HAVING: o HAVING pro GROUP BY é igual o WHERE pro SELECT (filtra)

select carga, count(*) from cursos
group by carga
having count(*) > 3						#pegar apenas as cargas que possuem mais que 3 registros
order by carga;


select carga, count(*) from cursos
group by carga
having ano > 2015						#isso vai dar ERRO, porque o HAVING só funciona quando filtra a mesma coluna do GROUP BY. Nesse caso seria a carga
order by carga;


select carga, count(*) from cursos
where ano > 2013						#primeiro ele deixa todos que tem o ano maior que 2013
group by carga							#agrupa
having count(*) > 3						#pega apenas as cargas que possuem mais que 3 registros
order by carga;





#Colocar um SELECT dentro do outro

select carga, count(*) from cursos
where ano > 2015
group by carga
having carga > (select avg(carga) from cursos)			#Podemos combinar SELECTs. Ele vai pegar apenas cargas que são maiores que a média de todas as cargas
order by carga;






