# Banco de Dados Fundamental 🎲



### Introdução

Neste curso, iremos trabalhar com o MySql e as ferramentas do Workbench, ministrado pelo professor **Nélio Alves**, no curso **Desenvolvedor Web Completo**.

O conteúdo inserido neste material é exclusivo e apenas complementa a primeira edição da postila de MySQL, do curso de **Banco de Dados relacionais pelo professor Felipe Mafra**.

Link para a primeira edição da apostila: 



### Criando um banco de dados no Workbench

Basta clicar com o botão direito dou mouse na aba de schema e, em seguida, create schema.



### Importando um Banco de Dados existente

1. Server data 
2. Data Import
3. Marca o checkbox Import from self-contained file





### Limitando a quantidade de registros exibidos

~~~~
limit 10
~~~~

~~~~mysql
SELECT * FROM projetos LIMIT 10,5;
~~~~



### Como retornar valores únicos com o DISTINCT

Caso queria consultar apenas os valores existentes numa tabela, basta usar o comando DISTINCT.

~~~~MYSQL
SELECT TEMPOENTREGA
FROM PRODUTOS
ORDER BY TEMPOENTREGA ASC;
~~~~

~~~~
+--------------+
| TEMPOENTREGA |
+--------------+
|            5 |
|            5 |
|            5 |
|            5 |
|            5 |
|            5 |
|            5 |
|            5 |
|            5 |
|            8 |
|            8 |
|            8 |
|            8 |
|           15 |
|           15 |
|           15 |
|           15 |
|           15 |
|           15 |
|           30 |
|           30 |
|           30 |
+--------------+
~~~~



Utilizando o DISTINCT

~~~~mysql
select distinct tempoentrega
from produtos
order by tempoentrega asc;
~~~~

Dessa forma, cada valor será exibido apenas uma vez:

~~~~
+--------------+
| tempoentrega |
+--------------+
|            5 |
|            8 |
|           15 |
|           30 |
+--------------+
~~~~



### Criando um filtro entre intervalos (between)



~~~~
+--------------------------------+---------------+--------------+
| nomeproduto                    | precounitario | tempoentrega |
+--------------------------------+---------------+--------------+
| Biscottis                      |         20.00 |           15 |
| Organic Earl Grey              |          9.00 |            8 |
| Sugar                          |          3.00 |            8 |
| Non-Diary Creamer              |          3.00 |            5 |
| Steel Mug                      |         21.00 |           15 |
| Ceramic Mug                    |         14.00 |           15 |
| Plastic Mug                    |          7.00 |            8 |
| Thermometer                    |          3.00 |           30 |
| Hype Filters                   |          5.00 |            5 |
| Brave New World T-Shirt        |         12.00 |            5 |
| Brave Blend                    |         12.00 |           15 |
| Brave New World Sweatshirt     |         21.00 |           15 |
| Andes Baseball Cap             |         14.00 |            5 |
| Andes Toque                    |          9.00 |            5 |
| Audio CD                       |         14.00 |            5 |
| Year 1999 Blend                |         12.00 |            5 |
| Border Blend                   |         12.00 |            5 |
| Blond Blend                    |         12.00 |            5 |
| Winter Blend                   |         12.00 |            8 |
| Chocolate Mocha Bars           |         12.00 |           15 |
| Chocolate Covered Coffee Beans |          5.00 |           30 |
| Breath Mints                   |          2.00 |           30 |
+--------------------------------+---------------+--------------+
~~~~

Aplicando o between

~~~~mysql
select nomeproduto, precounitario, tempoentrega
from produtos
where precounitario between 5 and 12
order by precounitario;
~~~~

O comando between vai exibir apenas os preços que estão entre 5 e 12

~~~~
+--------------------------------+---------------+--------------+
| nomeproduto                    | precounitario | tempoentrega |
+--------------------------------+---------------+--------------+
| Hype Filters                   |          5.00 |            5 |
| Chocolate Covered Coffee Beans |          5.00 |           30 |
| Plastic Mug                    |          7.00 |            8 |
| Organic Earl Grey              |          9.00 |            8 |
| Andes Toque                    |          9.00 |            5 |
| Brave New World T-Shirt        |         12.00 |            5 |
| Brave Blend                    |         12.00 |           15 |
| Year 1999 Blend                |         12.00 |            5 |
| Border Blend                   |         12.00 |            5 |
| Blond Blend                    |         12.00 |            5 |
| Winter Blend                   |         12.00 |            8 |
| Chocolate Mocha Bars           |         12.00 |           15 |
+--------------------------------+---------------+--------------+
~~~~



### Criando um filtro IN

O filtro IN possibilita mostrar apenas os valores selecionados no parênteses. No caso abaixo, 5 e 30:

~~~~mysql
Select nomeproduto, precounitario, tempoentrega
from produtos
where tempoentrega IN (5,15,30)
order by precounitario;
~~~~

~~~~
+--------------------------------+---------------+--------------+
| nomeproduto                    | precounitario | tempoentrega |
+--------------------------------+---------------+--------------+
| Breath Mints                   |          2.00 |           30 |
| Non-Diary Creamer              |          3.00 |            5 |
| Thermometer                    |          3.00 |           30 |
| Hype Filters                   |          5.00 |            5 |
| Chocolate Covered Coffee Beans |          5.00 |           30 |
| Andes Toque                    |          9.00 |            5 |
| Brave New World T-Shirt        |         12.00 |            5 |
| Brave Blend                    |         12.00 |           15 |
| Year 1999 Blend                |         12.00 |            5 |
| Border Blend                   |         12.00 |            5 |
| Blond Blend                    |         12.00 |            5 |
| Chocolate Mocha Bars           |         12.00 |           15 |
| Ceramic Mug                    |         14.00 |           15 |
| Andes Baseball Cap             |         14.00 |            5 |
| Audio CD                       |         14.00 |            5 |
| Biscottis                      |         20.00 |           15 |
| Steel Mug                      |         21.00 |           15 |
| Brave New World Sweatshirt     |         21.00 |           15 |
+--------------------------------+---------------+--------------+
~~~~



Também é possível filtrar os valores diferentes do digitado, utilizando o NOT IN:

~~~~mysql
Select nomeproduto, precounitario, tempoentrega
from produtos
where tempoentrega NOT IN (5,15,30)
order by precounitario;
~~~~

~~~~
+-------------------+---------------+--------------+
| nomeproduto       | precounitario | tempoentrega |
+-------------------+---------------+--------------+
| Sugar             |          3.00 |            8 |
| Plastic Mug       |          7.00 |            8 |
| Organic Earl Grey |          9.00 |            8 |
| Winter Blend      |         12.00 |            8 |
+-------------------+---------------+--------------+
~~~~



### Filtrando valores por tempo

Tabela

~~~~
+----------+-------------+------------+--------------+--------------+
| pedidoid | data_pedido | data_saida | data_entrega | valor_pedido |
+----------+-------------+------------+--------------+--------------+
|        1 | 2006-11-19  | 2006-11-19 | 2006-11-24   |       480.00 |
|        2 | 2006-11-19  | 2006-11-24 | 2006-11-29   |       295.00 |
|        3 | 2006-12-20  | 2006-12-20 | 2006-12-25   |       650.00 |
|        4 | 2007-12-22  | 2007-12-23 | 2007-12-29   |       240.00 |
|        5 | 2007-01-21  | 2007-01-22 | 2007-01-28   |       600.00 |
|        6 | 2007-01-21  | 2007-01-22 | 2007-01-27   |      2720.00 |
|        7 | 2007-01-24  | 2007-01-25 | 2007-01-28   |       260.00 |
|        8 | 2007-01-27  | 2007-01-29 | 2007-01-31   |      1840.00 |
|        9 | 2007-02-01  | 2007-02-01 | 2007-02-01   |       780.00 |
|       10 | 2007-02-01  | 2007-02-01 | 2007-02-01   |      2240.00 |
|       11 | 2007-02-03  | 2007-02-03 | 2007-02-08   |      1500.00 |
|       12 | 2007-02-03  | 2007-02-03 | 2007-02-09   |       450.00 |
|       13 | 2007-03-18  | 2007-03-26 | 2007-03-30   |       800.00 |
|       14 | 2007-03-25  | 2007-03-25 | 2007-03-26   |       380.00 |
|       15 | 2007-04-02  | 2007-04-05 | 2007-04-09   |       475.00 |
|       16 | 2007-04-05  | 2007-04-05 | 2007-04-11   |       290.00 |
|       17 | 2007-04-19  | 2007-04-19 | 2007-04-19   |       810.00 |
|       18 | 2007-05-01  | 2007-02-12 | 2007-02-17   |       445.00 |
|       19 | 2007-05-04  | 2007-05-05 | 2007-05-07   |       295.00 |
|       20 | 2007-06-10  | 2007-06-10 | 2007-06-11   |       475.00 |
+----------+-------------+------------+--------------+--------------+
~~~~

Filtrando o total de vendas em 2007:

~~~~mysql
select sum(valor_pedido) as totalvendido
from pedidos
where year(data_pedido) = '2007';
~~~~

~~~~
+--------------+
| totalvendido |
+--------------+
|     14600.00 |
+--------------+
~~~~





### Função Count

Contando a quantidade de pedidos em um determinado ano

~~~~~mysql
select count(pedidoID) as totalpedidos
from pedidos
where year(data_pedido) = '2007';
~~~~~

~~~~
+--------------+
| totalpedidos |
+--------------+
|           17 |
+--------------+
~~~~



### Operador group by

Serve para agrupar um determinado tipo de registro. No exemplo abaixo, irá exibir a quantidade de produtos pertencentes a cada categoria de comida.

É importante que seja utilizando com a função COUNT().

~~~~mysql
SELECT NOMECATEGORIA, COUNT(PRODUTOID) AS TOTAL
FROM PRODUTOS P
INNER JOIN CATEGORIAS C
ON P.CATEGORIAID = C.CATEGORIAID
GROUP BY P.CATEGORIAID;
~~~~

~~~~mysql
+---------------+-------+
| NOMECATEGORIA | TOTAL |
+---------------+-------+
| Food          |     7 |
| Merchandise   |     6 |
| Clothing      |     4 |
| Coffee        |     5 |
+---------------+-------+
~~~~



### Operador HAVING

Filtrando o total arrecadado por cada status do pedido:

~~~~mysql
select status_pedido, sum(valor_pedido)
from pedidos
group by status_pedido;
~~~~

~~~~
+---------------+-------------------+
| status_pedido | sum(valor_pedido) |
+---------------+-------------------+
|             1 |           6950.00 |
|             2 |           6975.00 |
|             3 |            260.00 |
|             4 |           1840.00 |
+---------------+-------------------+
~~~~

Utilizando o HAVING

~~~~mysql
select status_pedido, sum(valor_pedido) as SOMA
from pedidos
group by status_pedido
having SOMA >= 6000;
~~~~

Resultado:

~~~~
+---------------+---------+
| status_pedido | SOMA    |
+---------------+---------+
|             1 | 6950.00 |
|             2 | 6975.00 |
+---------------+---------+
~~~~

A diferença entre o HAVING e o WHERE é que não é possível atribuir funções ao where.

Outra diferença é que o where vem antes do Group / Order by. Portanto, a performance do Having será melhor.



### A diferença entre Inner Join, Left join e Right join

- INNER JOIN: mostra apenas os registros q "casam" e aparecem nas duas tabelas.
- LEFT JOIN: mostra todos os registros q "casam" da 1a. tabela, mesmo que não estejam na 2a.
- RIGHT JOIN: mostra todos os registros q "casam" da 2a. tabela, mesmo que  não estejam na 1a.
- FULL JOIN: mostra todos os registros q "casam", mesmo estando ele na 1a. e não na 2a., ou estando na 2a. e não na 1a.



### Relacionando três tabelas

~~~~mysql
select distinct p.clienteid, c.nomecompleto, c.telefone, c.email, pi.pedidoid, pi.produtoid, pi.quantidade
from clientes c
inner join pedidos p on c.clienteid = p.clienteid
inner join pedidos_item pi on pi.pedidoid = p.pedidoid
where produtoid = 2;
~~~~





## Data Types



### Numeric



**Integrer**

<a href="https://imgur.com/xDqlG12"><img src="https://i.imgur.com/xDqlG12.png" title="source: imgur.com" /></a>



**Decimal**

- salário (10,2) - Amazena até 10 dígitos, sendo 2 para campos decimais
- preco (10,4) - Dos 10 dígitos, 4 serão decimais



**Date and Time**

| Tipo      | Exemplo             | Descrição                                       |
| --------- | ------------------- | ----------------------------------------------- |
| Date      | 0000-00-00          |                                                 |
| Time      | 00:00:00            |                                                 |
| datetime  | 0000-00-00 00:00:00 | Armazena datas; 4 bytes de amazenamento         |
| timestamp | 0000-00-00 00:00:00 | Armazena a data de uma determinada ação; 8 byte |
| year      | 0000                |                                                 |



**String**

<a href="https://imgur.com/yyVDdU7"><img src="https://i.imgur.com/yyVDdU7.png" title="source: imgur.com" /></a>



