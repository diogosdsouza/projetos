### Select e funções ####

#Criar uma tabela utilizando select
create table produtos2(select * from produtos where quantidade >=10)

select * from produtos2


#Copiar todos os registros da tabela produtos para produtos2
insert into produtos2(select id_prod, nome_produtos,valor, quantidade, id_cad from produtos)


#### Funções de Agregação ####
#São responsáveis por agrupar valores onde o resultado será um único
select quantidade, nome_cadastro as cliente_vendido
from produtos, cadastro
where cadastro.id_cad = produtos.id_cad
order by quantidade



#GROUP BY agrupa registros repetidos
select nome_produtos,nome_cadastro, quantidade as QT_Vendido
from cadastro,produtos
where cadastro.id_cad = produtos.id_cad
group by nome_produtos,nome_cadastro,quantidade
order by nome_produtos


#COUNT conta registros de uma tabela
select count(*) from produtos;


#COUNT + GROUP BY:
select nome_cadastro,nome_produtos,count(nome_produtos),sum(quantidade) as contagem_produtos #SUM é soma
from produtos,cadastro
where cadastro.id_cad = produtos.id_cad
group by nome_cadastro,nome_produtos
having count(nome_produtos) < 3 #HAVING CONT tras a contagem com um condição


#MAX e MIN maximo valor e mínimo valor
select min(quantidade) as qt_min_de_produtos, max(quantidade) as qt_max_de_produtos
from produtos


#SUM faz a soma total em um único resultado
select sum(quantidade) as qt_total,
format(sum(valor),3) as valor_total #FORMAT para determinar casas após a vírgula
from produtos


#média de um valor com a função AVG --> tras a média
select format(avg(valor),3) as Média from produtos



#Função de STRINGS
#Manipular valores de texto ou varchar


#Função SUBSTR é usada para capturar uma parte dos dados
#Função LENGTH é usada para contar caracteres
select nome_produtos from produtos
where substr(nome_produtos,1,2) = 'ma' #Tras todos que começa com 'ma'
and length(nome_produtos) > 5 #Todos que tem mais de 5 letras


#CONCAT concatena os resultados das colunas
select concat(nome_cadastro,' gosta de: ',nome_produtos) as Gosto_cliente
from cadastro, produtos
where cadastro.id_cad = produtos.id_cad
order by nome_cadastro

#CONCAT_WS utiliza um separador para cada campo de um registro
select concat_ws(',',nome_produtos,quantidade,valor) #vai colocar uma ',' entre as colunas
from produtos
where nome_produtos like 'M%'


#LCASE = lower case (letras em minúsculo)
#UCASE= upper case (letras em maiusculo)
select lcase(nome_produtos),ucase (nome_produtos) from produtos




#FUNCÕES DE CÁLCULOS E OPERADORES ARITMÉTICOS


#arredondamento ROUND
select round(3645.6333,2)

#raiz quadrada SQRT
select sqrt(443) as Raíz Quadrada

#pi
select pi()



###OPERAÇÕES###

#adição
select(quantidade+valor) as adição from produtos
where id_cad = 4

#subtração
select(quantidade-valor) as subtração from produtos
where id_cad = 4

#Multiplicação
select(quantidade*valor) as multiplicação from produtos
where id_cad = 4

#divisão
select(quantidade/valor) as divisão from produtos
where id_cad = 4



####FUNÇÕES DE DATA####

#CURDATE data atual
select curdate()

#CURTIME hora atual
select curtime()



#### ANÁLISE COM VALORES E HORAS ####


#DATEDIFF diferença de dias
select datediff('2023-01-30','2020-06-01')


#DATE_ADD adicionar um valor a uma data
select date_add(now(),interval 60 day) #daqui a 60 dias


#DAY NAME extrair o dia da semana de uma data
select dayname('2018-09-28')


#extrair o ano de uma data
select extract(year from '2022-09-01')


#LAST_DAY Retornar o ultimo dia do mês
select last_day('2022-02-01')


#transformar datas em formato texto para formato de data
select str_to_date('04.10.2020',get_format(date,'USA'))




##### IF NO SQL #####

#Testar a quantidade de frutas em estoque e tarzer um resultado
#do select como alto e baixo
select nome_produtos,quantidade,
if(quantidade<=20,"Baixo","Alto") as Estoque  #,"True","False")
from produtos;



#Validação de valores
select valor,
if(valor <> 10.00,"Diferente","Igual") as valores  #<> maior ou menor
from produtos




#Analisar a quantidade de frutas contado-as e trazendo como baixo, médio, bom e alto
select 
case                                        #CASE = else if (vários if)
when quantidade <= 4 then "Estoque baixo"   #WHEN = enquanto
when quantidade <= 15 then "Estoque médio"  #THEN = então
when quantidade <= 30 then "Estoque bom"
else 'Estoque alto'
end as qt_estoque,
count(*)qt_estoque from produtos
group by qt_estoque
order by qt_estoque




#Utilizar o if com join
#Analisar clientes com compras de quantidade acima de 10
select nome_cadastro,nome_produtos,quantidade,
if(quantidade>=10,"Alto","Baixo") as qt_compras
from produtos join cadastro on cadastro.id_cad = produtos.id_cad
order by qt_compras


