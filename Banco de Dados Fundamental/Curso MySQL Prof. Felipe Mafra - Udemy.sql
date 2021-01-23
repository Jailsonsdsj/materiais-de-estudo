SCRIPT CURSO DE BANCO DE DADOS
MÓDULO 1 - BANCO DE DADOS RELACIONAL

------------------------------------------------------------------------------
ÍNCIDE 

--	MODELAGEM BÁSICA......................................|B2S3A| LINHA:
--	PROCESSOS DE MODELAGEM................................|Q2W8E| LINHA:
--	ÍNCIO DA MODELAGEM FÍSICA.............................|D5F3C| LINHA:
--	INSERINDO DADOS: INSERT INTO..........................|D1F23| LINHA:
--	COMANDO SELECT........................................|WF5S1| LINHA:
--	ALIAS DE COLUNAS......................................|D8E9S| LINHA:
--	FILTRANDO DADOS COM WHERE E LIKE......................|S1032| LINHA:
--	TABELA VERDADE........................................|S855A| LINHA:
--	OR - OU / AND - E.....................................|D2G3J| LINHA:
--	CONTANDO OS REGISTROS DE UMA TABNELA..................|G2T9E| LINHA:
--	OPERADOR GROUP BY.....................................|H1D3S| LINHA:
--	PERFORMANCE EM OPERADORES LÓGIOS - AULA TEÓRICA.......|M3N2H| LINHA:
--	FILTRAR VALORES NULOS.................................|B6F2C| LINHA:
--	UTILIZANDO O UPDATE PARA ALTERAR VALORES..............|OPL2J| LINHA:
--	DELETANDO REGISTROS COM A CLAUSULA DELELTE............|A2635| LINHA:
--	SUBSTITUINDO DADOS | ADICIONANDO MAIS DE UM DADO......|848H8| LINHA:
--	MODELAGEM FORMAL......................................|00JIU| LINHA:
--	CARDINALIDADE.........................................|Q2A3D| LINHA:
--	FOREIGN KEY - CHAVE ENTRANGERIA (FK)..................|A32S5| LINHA:
--	NOVO PRJETO COM MODELAGEM DE CLIENTE..................|Z5135| LINHA:
--	INSERINDO REGISTROS...................................|W5158| LINHA:
--	SELEÇÃO, PROJEÇÃO E JUNÇÃO............................|E8453| LINHA:
--	QUERIES -  SELEÇÃO, PROJEÇÃO E JUNÇÃO.................|D5153| LINHA:
--	FUNÇÃO IFNULL.........................................|C2132| LINHA:
--	VIEWS OU VISÕES.......................................|R5849| LINHA:
--	ORDENANDO A QUERY.....................................|F5689| LINHA:
--	DBA - DELIMITADOR E ESTADO DO SERVIDOR................|G5136| LINHA:
--	PROCEDIMENTOS ARMAZENADOS.............................|B1235| LINHA:
--	PROCEDURES COM PARÂMETROS.............................|Y2156| LINHA:
--	PROCEDIMENTOS COM TABELAS.............................|H1896| LINHA:
--	FUNÇÕES DE AGREGAÇÃO NUMÉRICAS (FUNÇÕES DE COLUNA)....|N0326| LINHA:
--	AGREDANDO DE AGREGAÇÃO SUM()..........................|U8469| LINHA:
--	SUB QUERIES OU INNERQUERIES...........................|J1236| LINHA:
--	OPERAÇÕES EM LINHAS...................................|M5489| LINHA:
--	MODIFICANDO ESTRUTURAS DE TABELA......................|I5146| LINHA:
--	ORGANIZANDO AS CHAVES - CONSTRAINT (REGRA)............|O6513| LINHA:
--	ORGANIZANDO CHAVES E AÇÕES DE CONSTRAINTS.............|K5423| LINHA:
--	DICIONÁRIO DE DADOS...................................|L2135| LINHA:
--	APAGANDO CONSTRAINTS..................................|O2156| LINHA:
--	REVISÃO DE CARDINALIDADE E FOREIGN KEY ...............|X5049| LINHA:
--	EXERCÍCIO DA OFICINA DO SR. JOSÉ......................|P8463| LINHA:
--	TRIGGERS..............................................|Q1235| LINHA:
--	CONCEITO DE ANTES DE DEPOIS DAS DRIGGERS..............|W9874| LINHA:
--	CRIANDO BACKUP COM AS TRIGGERS........................|M4560| LINHA:
--	COMUNICAÇÃO ENTRE BANCOS..............................|E6548| LINHA:
--	TRIGGER DE AUDITORIA..................................|R5120| LINHA:
--	AUTO RELACIONAMENTOS..................................|T1236| LINHA:
--	EXERCÍCIO 02..........................................|Y1549| LINHA:
--	CURSORES..............................................|U8496| LINHA:
--	FORMAS NORMAIS........................................|F2684| LINHA:
--	USANDO AS TRÊS FORMAS NORMAIS NA PRÁTICA..............|D5215| LINHA:

--	INFORMAÇÕES ALÉM DO CURSO.............................|F5156| LINHA:
--		REGISTROS REPEDITOS OU DUPLICADOS.................|G5133| LINHA:
--		APAGANDO REGISTRO REPETIDO........................|H3210| LINHA:
--	PADRÕES...............................................|L4102| LINHA:	
--		A PARTIR DAQUI
	
------------------------------------------------------------------------------









/* MODELAGEM BÁSICA */

ENTIDADE = TABELA
CAMPOS = ATRIBUTOS

CLIENTE

NOME -  CARACTERE (30)
CPF - NUMERICO (11)
EMAIL - CARACTERE (30)
TELEFONE - CARACTERE (30)
ENDERECO - CARACTERE (100)
SEXO - CARACTERE (1)

--tags: modelagem | básica | início
|B2S3A| PAG:
------------------------------------------------------------------------------

/* PROCESSOS DE MODELAGEM */

-- FASE 01 E FASE 02 - ADM DE DADOS
MODELAGEM CONCEITUAL: RASCUNHO
MODELAGEM LÓGICA: QUALQUER PROGRAMA DE MODELAGEM, EX.: BRMODELO

-- FASE 03 - DBA / ADM
MODELAGEM FÍSICA: SCRIPT DE BANCO 

--tags: fases da modelagem | administrador de dados
|Q2W8E| PAG:
------------------------------------------------------------------------------

/* INÍCIO DA MODELAGEM FÍSICA */

-- CRIANDO O BANCO DE DADOS
CREATE DATABASE PROJETO;

-- CONECTANDO-SE AO BANCO
USE PROJETO;

-- CRIAR TABELA
CREATE TABLE CLIENTE(
	NOME VARCHAR(30), --CONTRARÁ ATÉ 30 CARACTERES
	SEXO CHAR(1), --CONTARÁ EXATAMENTE 1 CARACTERE 
	EMAIL VARCHAR(30),
	CPF INT(11), --NÚMEROS INTERIOS, SEM ASPAS
	TELEFONE VARCHAR(30), 
	ENDERECO VARCHAR(100)

);

-- MOSTRAR TODAS AS TABELAS DE UM BANCO
SHOW TABLES;
+-------------------+
| Tables_in_projeto |
+-------------------+
| cliente           |
+-------------------+

-- DESCREVENDO A ESTRUTURA DA TABELA
DESC CLIENTE; 
+----------+--------------+------+-----+---------+-------+
| Field    | Type         | Null | Key | Default | Extra |
+----------+--------------+------+-----+---------+-------+
| NOME     | varchar(30)  | YES  |     | NULL    |       |
| SEXO     | char(1)      | YES  |     | NULL    |       |
| EMAIL    | varchar(30)  | YES  |     | NULL    |       |
| CPF      | int(11)      | YES  |     | NULL    |       |
| TELEFONE | varchar(30)  | YES  |     | NULL    |       |
| ENDERECO | varchar(100) | YES  |     | NULL    |       |
+----------+--------------+------+-----+---------+-------+

--ALTERAR NOME DA COLUNA / RENOMEAR COLUNA
ALTER TABLE TABELA_EXEMPLO CHANGE ID_EXEMPLO NOVO_ID_EXEMPLO VARCHAR(20);

--tags: criando tabelas | criando tabela | mostrando todas as tabelas | descrever a estrutura da tabela 
|D5F3C| PAG:
------------------------------------------------------------------------------

/* INSERINDO DADOS: INSERT INTO*/

/* FORMA 01 - INSERINDO DADOS SEM EXPECIFICAR AS COLUNAS*/
-- DEVEM SER INSERIDOS NA ORDEM DOS CAMPOS DA TABELA

INSERT INTO CLIENTE VALUES ('JOAO','M','JOAO@GMAIL.COM',852140365,'229231110','MATA LACERDA - ESTACIO - RIO DE JANEIRO - RJ');
INSERT INTO CLIENTE VALUES ('CELIA','F','CELIA@GMAIL.COM',547853210,'25078646','RIACHUELO - CENTRO - RIO DE JANEIRO - RJ');
INSERT INTO CLIENTE VALUES ('JOANNE','F',NULL,078963250,'84750120','OSCAR CURY - BOM RETIRO - PATOS DE MINAS - MG');
-- NO TERCEIRO INSERT, HÁ A TAG "NULL" EXPECIFICANDO QUE O CAMPO E-MAIL SERÁ VAZIO

/* FOMA 02 - EXPECIFICANDO AS COLUNAS */
--NESTE CASO, SE ALGUM CAMPO FOR NULO, NÃO SERÁ NECESSÁRIO EXPECIFICA-LO
INSERT INTO CLIENTE (NOME,SEXO,ENDERECO,TELEFONE,CPF) VALUES('LILAN','F', 'RUA MARECHAL DEODORO DA FONSCECA - BOA VISTA - PE','81984759632',447856935);
 
 
/* FORMA 03 - INSERT COMPACTO (SOMENTE MYQL) */
--NESTA FORMA, É POSSÍVEL INSERIR TODOS OS REGISTORS DE UMA SÓ VEZ
INSERT INTO CLIENTE VALUES ('ANA', 'F', 'ANA@GMAIL.COM',85548962,'5485021485','AV GUARARAPES - RECIFE - PERNAMBUCO - PE'),
('MARTA','F','MARTA@GMAIL.COM',547896012,'859632147', 'MAMOEIRO - CENTRO - SÃO PAULO - PE');

--tags: inserir dados | expecificar colunas
|D1F23| PAG:
------------------------------------------------------------------------------

/* COMANDO SELECT*/
--SELEÇAO (SELECT, WHERE, LIKE); PROJEÇÃO (AS); E JUNÇÃO

--EXIBE A DATA E HORA DO BANCO DE DADOS
SELECT NOW();
+---------------------+
| NOW()               |
+---------------------+
| 2019-07-13 20:26:34 |
+---------------------+

SELECT 'JAILSON JÚNIOR';
+-----------------+
| JAILSON JÚNIOR  |
+-----------------+
| JAILSON JÚNIOR  |
+-----------------+

SELECT 'BANCO DE DADOS';
+----------------+
| BANCO DE DADOS |
+----------------+
| BANCO DE DADOS |
+----------------+

--tags: seleção, projeção e junção | comando de seleção 
|WF5S1| PAG:
------------------------------------------------------------------------------

/* ALIAS DE COLUNAS */
-- AS ALIAS OU APELIDOS SÃO NOMEAÇÕES PARA AS TABELAS FEITOS ATRAVÉS DO COMANDO "AS"
SELECT 'JAILSON JÚNIOR' AS PROFESSOR;
+-----------------+
| PROFESSOR       |
+-----------------+
| JAILSON JÚNIOR  |
+-----------------+

SELECT NOME, SEXO, EMAIL, ENDERECO FROM CLIENTE;
+----------------+------+-------------------------+
| NOME           | SEXO | EMAIL                   |
+----------------+------+-------------------------+
| JOAO           | M    | JOAO@GMAIL.COM          | 
| CELIA          | F    | CELIA@GMAIL.COM         | 
| JOANNE         | F    | NULL                    | 
| LILAN          | F    | NULL                    |
| ANA            | F    | ANA@GMAIL.COM           |
| MARTA GOLPISTA | F    | MARTAGOLPISTA@GMAIL.COM |
+----------------+------+-------------------------+
+---------------------------------------------------+
| ENDERECO                                          |
+---------------------------------------------------+
| MATA LACERDA - ESTACIO - RIO DE JANEIRO - RJ      |
| RIACHUELO - CENTRO - RIO DE JANEIRO - RJ          |
| OSCAR CURY - BOM RETIRO - PATOS DE MINAS - MG     |
| RUA MARECHAL DEODORO DA FONSCECA - BOA VISTA - PE |
| AV GUARARAPES - RECIFE - PERNAMBUCO - PE          |
| MAMOEIRO - CENTRO - SÃO PAULO - PE                |
+---------------------------------------------------+

SELECT NOME AS CLIENTE, SEXO, EMAIL FROM CLIENTE;
+----------------+------+-------------------------+
| CLIENTE        | SEXO | EMAIL                   |
+----------------+------+-------------------------+
| JOAO           | M    | JOAO@GMAIL.COM          |
| CELIA          | F    | CELIA@GMAIL.COM         |
| JOANNE         | F    | NULL                    |
| LILAN          | F    | NULL                    |
| ANA            | F    | ANA@GMAIL.COM           |
| MARTA GOLPISTA | F    | MARTAGOLPISTA@GMAIL.COM |
+----------------+------+-------------------------+
-- NOMEOU A TABELA "NOME" PARA "CLIENTE"


SELECT NOME, SEXO, EMAIL, ENDERECO, NOW() AS DATA_HORA FROM CLIENTE;
+---------------------------------------------------+---------------------+
| ENDERECO                                          | DATA_HORA           |
+---------------------------------------------------+---------------------+
| MATA LACERDA - ESTACIO - RIO DE JANEIRO - RJ      | 2019-07-13 20:44:13 |
| RIACHUELO - CENTRO - RIO DE JANEIRO - RJ          | 2019-07-13 20:44:13 |
| OSCAR CURY - BOM RETIRO - PATOS DE MINAS - MG     | 2019-07-13 20:44:13 |
| RUA MARECHAL DEODORO DA FONSCECA - BOA VISTA - PE | 2019-07-13 20:44:13 |
| AV GUARARAPES - RECIFE - PERNAMBUCO - PE          | 2019-07-13 20:44:13 |
| MAMOEIRO - CENTRO - SÃO PAULO - PE                | 2019-07-13 20:44:13 |
+---------------------------------------------------+---------------------+

/* COMANDO SELECT * FROM (APENAS PARA FINS ACADÊMICOS)*/
SELECT * FROM CLIENTE;
+----------------+------+-------------------------+-----------+-------------+
| NOME           | SEXO | EMAIL                   | CPF       | TELEFONE    | 
+----------------+------+-------------------------+-----------+-------------+
| JOAO           | M    | JOAO@GMAIL.COM          | 852140365 | 229231110   |
| CELIA          | F    | CELIA@GMAIL.COM         | 547853210 | 25078646    |
| JOANNE         | F    | NULL                    |  78963250 | 84750120    |
| LILAN          | F    | NULL                    | 447856935 | 81984759632 |
| ANA            | F    | ANA@GMAIL.COM           |  85548962 | 5485021485  |
| MARTA GOLPISTA | F    | MARTAGOLPISTA@GMAIL.COM | 547896012 | 859632147   |
+----------------+------+-------------------------+-----------+-------------+
+---------------------------------------------------+
| ENDERECO                                          |
+---------------------------------------------------+
| MATA LACERDA - ESTACIO - RIO DE JANEIRO - RJ      |
| RIACHUELO - CENTRO - RIO DE JANEIRO - RJ          |
| OSCAR CURY - BOM RETIRO - PATOS DE MINAS - MG     |
| RUA MARECHAL DEODORO DA FONSCECA - BOA VISTA - PE |
| AV GUARARAPES - RECIFE - PERNAMBUCO - PE          |
| MAMOEIRO - CENTRO - SÃO PAULO - PE                |
+---------------------------------------------------+

--ESTE COMANDO EXIBIRÁ TODOS OS DADOS DE UMA TABELA. NÃO É RECOMENTADO A SUA UTILIZAÇÃO EM BANCOS DE DADOS GRANDES, UMA VEZ QUE, ALÉM DE TRAZER INFORMAÇÕES DESNECESSÁRIAS E/OU CONFIDENCIAIS, PODE AFETAR TODA A PERFORMANCE DELE.

--tags: apelidos | renomear colunas
|D8E9S| PAG:
------------------------------------------------------------------------------

/* FILTRANDO DADOS COM WHERE E LIKE */

-- PRIMEIRAMENTE, VAMOS REALIZAR A BUSCA NORMAL
SELECT NOME, TELEFONE FROM CLIENTE;
+----------------+-------------+
| NOME           | TELEFONE    |
+----------------+-------------+
| JOAO           | 229231110   |
| CELIA          | 25078646    |
| JOANNE         | 84750120    |
| LILAN          | 81984759632 |
| ANA            | 5485021485  |
| MARTA GOLPISTA | 859632147   |
+----------------+-------------+

--AGORA COM O FILTRO WHERE (ONDE)
SELECT NOME, SEXO FROM CLIENTE
WHERE SEXO = 'M';
+------+------+
| NOME | SEXO |
+------+------+
| JOAO | M    |
+------+------+
--APENAS JOÃO É DO SEXO MASCULINO

SELECT NOME, ENDERECO FROM CLIENTE
WHERE SEXO = 'F';
+----------------+---------------------------------------------------+
| NOME           | ENDERECO                                          |
+----------------+---------------------------------------------------+
| CELIA          | RIACHUELO - CENTRO - RIO DE JANEIRO - RJ          |
| JOANNE         | OSCAR CURY - BOM RETIRO - PATOS DE MINAS - MG     |
| LILAN          | RUA MARECHAL DEODORO DA FONSCECA - BOA VISTA - PE |
| ANA            | AV GUARARAPES - RECIFE - PERNAMBUCO - PE          |
| MARTA GOLPISTA | MAMOEIRO - CENTRO - SÃO PAULO - PE                |
+----------------+---------------------------------------------------+
--NOME E ENDEREÇO DAS PESSOAS DE SEXO FEMININO

SELECT NOME, SEXO FROM CLIENTE 
WHERE ENDERECO = 'RJ';
--EXIBIRÁ O NOME E SEXO DA TABELA CLIENTE ONDE O ENDEREÇO SEJA IGUAL A 'RJ'. ENTRETANTO, O 'IGUAL' EXIBE APENAS OS DADOS EXATOS DAS COLUNAS. 


/* UTILIZANDO O LIKE JUNTO COM O CORINGA (PERCENT - %) */
--ESTE COMANDO EXIBE OS DADOS ATRAVÉS DE QUALQUER CARACTERE EXISTENTE NA TABELA

SELECT NOME,SEXO FROM CLIENTE
WHERE ENDERECO LIKE '%RJ'; 
+-------+------+
| NOME  | SEXO |
+-------+------+
| JOAO  | M    |
| CELIA | F    |
+-------+------+
-- EXIBIU TODO O EDEREÇO QUE VEM ANTES DO %

SELECT NOME, SEXO, ENDERECO FROM CLIENTE
WHERE ENDERECO LIKE 'RUA%';
+-------+------+---------------------------------------------------+
| NOME  | SEXO | ENDERECO                                          |
+-------+------+---------------------------------------------------+
| LILAN | F    | RUA MARECHAL DEODORO DA FONSCECA - BOA VISTA - PE |
+-------+------+---------------------------------------------------+
--EXIBIU TODO O ENDEREÇO APÓS O RUA

SELECT NOME, SEXO, ENDERECO FROM CLIENTE
WHERE ENDERECO LIKE '%CENTRO%';
+----------------+------+------------------------------------------+
| NOME           | SEXO | ENDERECO                                 |
+----------------+------+------------------------------------------+
| CELIA          | F    | RIACHUELO - CENTRO - RIO DE JANEIRO - RJ |
| MARTA GOLPISTA | F    | MAMOEIRO - CENTRO - SÃO PAULO - PE       |
+----------------+------+------------------------------------------+
--EXIBIU TODOS OS ENDEREÇOS ENTRE O "CENTRO"


--DICA: ESTUDAR MATEMÁTICA DISCRETA (LÓGICA MATEMÁTICA)

--tags: filtrar dados
|S1032| PAG:
------------------------------------------------------------------------------

/* TABELA VERDADE*/
OU 1V = VERDADEIRO
E 1F= FALSO

--TABELA ATUAL PARA ANÁLISE
+----------------+------+-------------------------+-----------+-------------+
| NOME           | SEXO | EMAIL                   | CPF       | TELEFONE    |
+----------------+------+-------------------------+-----------+-------------+
| JOAO           | M    | JOAO@GMAIL.COM          | 852140365 | 229231110   |
| CELIA          | F    | CELIA@GMAIL.COM         | 547853210 | 25078646    |
| JOANNE         | F    | NULL                    |  78963250 | 84750120    |
| LILAN          | F    | NULL                    | 447856935 | 81984759632 |
| ANA            | F    | ANA@GMAIL.COM           |  85548962 | 5485021485  |
| MARTA GOLPISTA | F    | MARTAGOLPISTA@GMAIL.COM | 547896012 | 859632147   | 
+----------------+------+-------------------------+-----------+-------------+
+---------------------------------------------------+
| ENDERECO                                          |
+---------------------------------------------------+
| MATA LACERDA - ESTACIO - RIO DE JANEIRO - RJ      |
| RIACHUELO - CENTRO - RIO DE JANEIRO - RJ          |
| OSCAR CURY - BOM RETIRO - PATOS DE MINAS - MG     |
| RUA MARECHAL DEODORO DA FONSCECA - BOA VISTA - PE |
| AV GUARARAPES - RECIFE - PERNAMBUCO - PE          |
| MAMOEIRO - CENTRO - SÃO PAULO - PE                |
+---------------------------------------------------+

--tags:
|S855A| PAG:
------------------------------------------------------------------------------

--OR - OU

SELECT NOME, SEXO, ENDERECO FROM CLIENTE
WHERE SEXO ='M' OR ENDERECO LIKE 'RJ';
+------+------+----------------------------------------------+
| NOME | SEXO | ENDERECO                                     |
+------+------+----------------------------------------------+
| JOAO | M    | MATA LACERDA - ESTACIO - RIO DE JANEIRO - RJ |
+------+------+----------------------------------------------+

SELECT NOME, EMAIL FROM CLIENTE 
WHERE SEXO='F' OR ENDERECO LIKE 'SP';
+----------------+-------------------------+
| NOME           | EMAIL                   |
+----------------+-------------------------+
| CELIA          | CELIA@GMAIL.COM         |
| JOANNE         | NULL                    |
| LILAN          | NULL                    |
| ANA            | ANA@GMAIL.COM           |
| MARTA GOLPISTA | MARTAGOLPISTA@GMAIL.COM |
+----------------+-------------------------+

--AND - E
SELECT NOME, EMAIL FROM CLIENTE
WHERE SEXO = 'M' AND ENDERECO LIKE '%RJ';
+------+----------------+
| NOME | EMAIL          |
+------+----------------+
| JOAO | JOAO@GMAIL.COM |
+------+----------------+

--tags: 
|D2G3J| PAG:
------------------------------------------------------------------------------

/* CONTANDO OS REGISTROS DE UMA TABNELA */

SELECT COUNT(*) FROM CLIENTE;
+----------+
| COUNT(*) |
+----------+
|        6 |
+----------+

SELECT COUNT(*) AS "QUANTIDADE DE REGISTROS DA TABELA CLIENTE" FROM CLIENTE;
+-------------------------------------------+
| QUANTIDADE DE REGISTROS DA TABELA CLIENTE |
+-------------------------------------------+
|                                         6 |
+-------------------------------------------+

--tags: 
|G2T9E| PAG:
------------------------------------------------------------------------------

/* OPERADOR GROUP BY*/
--AGRUPAR POR

SELECT SEXO, COUNT(*) AS "QUANTIDADE"
FROM CLIENTE
GROUP BY SEXO;
+------+------------+
| SEXO | QUANTIDADE |
+------+------------+
| F    |          5 |
| M    |          1 |
+------+------------+
--SEPARA AS COLUNAS DIFERENTES E EXIBE A QUANTIDADE DE CADA ITEM NELA. 
--NESSE CASO, SEPAROU "M" E "F"

--tags:
|H1D3S| PAG:
------------------------------------------------------------------------------

/* PERFORMANCE EM OPERADORES LÓGIOS - AULA TEÓRICA */
 
/* SUPONDO QUE O BANCO TENHA 1M DE REGISTROS

PARA CONTAR ESSES REGISTROS: 
SELECT COUNT (*) FROM CLIENTE;

PARA CONTAR E AGRUPAR POR SEXO:
SELECT SEXO, COUNT(*) FROM CLIENTE GROUP BY SEXO;

CONDIÇÃO DE FILTRAGEM:
SEXO = F 
CIDADE = RIO DE JANEIRO

SITUAÇÃO = TRATANDO COM OR (OU)
70% MULHERES DE SEXO = F
30% MORA NA CIDADE DO RIO DE JANEIRO

MONTADO A QUERY:
SELECT NOME, SEXO ENDERECO FROM CLIENTE
WHERE SEXO = 'F' OR CIDADE = '%RIO DE JANEIRO%';
-PRIMEIRO IRÁ ANALISAR O SEXO E, SE FOR FEMININO, PASSA PARA A CIDADE. SE A CIDADE FOR IGUAL A RIO DE JANEIRO, EXIBIRÁ NA TELA. ISSO MELHORA A PERFORMANCE DO BANCO

SITUAÇÃO = TRATANDO COM AND (E)
70% MULHERES DE SEXO = F
30% MORA NA CIDADE DO RIO DE JANEIRO

SELECT NOME, SEXO, ENDERECO FROM CLIENTE
WHERE CIDADE = 'RIO DE JANEIRO' AND SEXO = 'F'


-DICA DE PERFORMANCE: BUSCAR SEMPRE PELA CONDIÇÃO QUE TEM A MENOR CONDIÇÃO DE SER VERDADEIRO.
*/

--tags: velocidade | profissional de tunner
|M3N2H| PAG:
------------------------------------------------------------------------------

/* FILTRAR VALORES NULOS */

SELECT NOME, SEXO, ENDERECO FROM CLIENTE
WHERE EMAIL IS NULL;
+--------+------+---------------------------------------------------+
| NOME   | SEXO | ENDERECO                                          |
+--------+------+---------------------------------------------------+
| JOANNE | F    | OSCAR CURY - BOM RETIRO - PATOS DE MINAS - MG     |
| LILAN  | F    | RUA MARECHAL DEODORO DA FONSCECA - BOA VISTA - PE |
+--------+------+---------------------------------------------------+
--O VALOR NULL NÃO PODE TER O SINAL "=". DESSA FORMA, É NESCESSÁRIO SUBSTITUIR POR "IS"


SELECT NOME, SEXO, ENDERECO FROM CLIENTE
WHERE EMAIL IS NOT NULL;
+----------------+------+----------------------------------------------+
| NOME           | SEXO | ENDERECO                                     |
+----------------+------+----------------------------------------------+
| JOAO           | M    | MATA LACERDA - ESTACIO - RIO DE JANEIRO - RJ |
| CELIA          | F    | RIACHUELO - CENTRO - RIO DE JANEIRO - RJ     |
| ANA            | F    | AV GUARARAPES - RECIFE - PERNAMBUCO - PE     |
| MARTA GOLPISTA | F    | MAMOEIRO - CENTRO - SÃO PAULO - PE           |
+----------------+------+----------------------------------------------+

--tags:
|B6F2C| PAG:
------------------------------------------------------------------------------

/*UTILIZANDO O UPDATE PARA ALTERAR VALORES */
 --> NUNCA USE SEM A CLAUSULA WHERE <--
 
SELECT NOME, EMAIL FROM CLIENTE;
+----------------+-------------------------+
| NOME           | EMAIL                   |
+----------------+-------------------------+
| JOAO           | JOAO@GMAIL.COM          |
| CELIA          | CELIA@GMAIL.COM         |
| JOANNE         | NULL                    |
| LILAN          | NULL                    |
| ANA            | ANA@GMAIL.COM           |
| MARTA GOLPISTA | MARTAGOLPISTA@GMAIL.COM |
+----------------+-------------------------+

--SEMPRE ACOMANHADO DA CLAUSULA WHERE
UPDATE CLIENTE SET EMAIL= 'LILIAN@HOTMAIL.COM' 
WHERE NOME ='LILAN';

UPDATE CLIENTE SET EMAIL= 'JOANNE@HOTMAIL.COM' 
WHERE NOME ='JOANNE';

SELECT * FROM CLIENTE;
+----------------+------+-------------------------+-----------+-------------+
| NOME           | SEXO | EMAIL                   | CPF       | TELEFONE    |
+----------------+------+-------------------------+-----------+-------------+
| JOAO           | M    | JOAO@GMAIL.COM          | 852140365 | 81995458571 | 
| CELIA          | F    | CELIA@GMAIL.COM         | 547853210 | 25078646    | 
| JOANNE         | F    | JOANNEE@HOTMAIL.COM     |  78963250 | 84750120    | 
| LILAN          | F    | LILIAN@HOTMAIL.COM      | 447856935 | 81984759632 | 
| ANA            | F    | ANA@GMAIL.COM           |  85548962 | 5485021485  | 
| MARTA GOLPISTA | F    | MARTAGOLPISTA@GMAIL.COM | 547896012 | 859632147   | 
+----------------+------+-------------------------+-----------+-------------+
+---------------------------------------------------+
| ENDERECO                                          |
+---------------------------------------------------+
| MATA LACERDA - ESTACIO - RIO DE JANEIRO - RJ      |
| RIACHUELO - CENTRO - RIO DE JANEIRO - RJ          |
| OSCAR CURY - BOM RETIRO - PATOS DE MINAS - MG     |
| RUA MARECHAL DEODORO DA FONSCECA - BOA VISTA - PE |
| AV GUARARAPES - RECIFE - PERNAMBUCO - PE          |
| MAMOEIRO - CENTRO - SÃO PAULO - PE                |
+---------------------------------------------------+
--AGORA, LILAN E JOANNE POSSUEM EMAIL.

--tags: comando update | atualizar tabela | 
|OPL2J| PAG:
------------------------------------------------------------------------------

/* DELETANDO REGISTROS COM A CLAUSULA DELELTE */
	---> NUNCA USE SEM A CLAUSULA WHERE <---
	
DELETE FROM CLIENTE <- NUNCA FAÇA

DELETE FROM CLIENTE
WHERE NOME = 'ANA';
+----------------+------+-------------------------+-----------+-------------+
| NOME           | SEXO | EMAIL                   | CPF       | TELEFONE    |
+----------------+------+-------------------------+-----------+-------------+
| JOAO           | M    | JOAO@GMAIL.COM          | 852140365 | 81995458571 |
| CELIA          | F    | CELIA@GMAIL.COM         | 547853210 | 25078646    |
| JOANNE         | F    | JOANNEE@HOTMAIL.COM     |  78963250 | 84750120    |
| LILAN          | F    | LILIAN@HOTMAIL.COM      | 447856935 | 81984759632 |
| MARTA GOLPISTA | F    | MARTAGOLPISTA@GMAIL.COM | 547896012 | 859632147   |
+----------------+------+-------------------------+-----------+-------------+
+---------------------------------------------------+
| ENDERECO                                          |
+---------------------------------------------------+
| MATA LACERDA - ESTACIO - RIO DE JANEIRO - RJ      |
| RIACHUELO - CENTRO - RIO DE JANEIRO - RJ          |
| OSCAR CURY - BOM RETIRO - PATOS DE MINAS - MG     |
| RUA MARECHAL DEODORO DA FONSCECA - BOA VISTA - PE |
| MAMOEIRO - CENTRO - SÃO PAULO - PE                |
+---------------------------------------------------+
--ANA FOI REMOVIDA DA TABELA

--tags: comando update | atualizar tabela | 
|A2635| PAG:
------------------------------------------------------------------------------

/*SUBSTITUINDO DADOS | ADICIONANDO MAIS DE UM DADO */

-- PARA SUBISTITUIR
UPDATE CLIENTE 
SET TELEFONE ='81995458571'
WHERE NOME ='JOAO';

-- PARA ADICONAR MAIS UM SEM SUBSTITUIR
UPDATE CLIENTE 
SET TELEFONE ='81995458571 - 81965201478'
WHERE NOME ='JOAO';
+----------------+---------------------------+
| NOME           | TELEFONE                  |
+----------------+---------------------------+
| JOAO           | 81995458571 - 81965201478 |
| CELIA          | 25078646                  |
| JOANNE         | 84750120                  |
| LILAN          | 81984759632               |
| MARTA GOLPISTA | 859632147                 |
+----------------+---------------------------+

SELECT ENDERECO, COUNT(*) AS "QUANTIDADE" FROM CLIENTE GROUP BY ENDERECO;
+---------------------------------------------------+------------+
| ENDERECO                                          | QUANTIDADE |
+---------------------------------------------------+------------+
| MAMOEIRO - CENTRO - SÃO PAULO - PE                |          1 |
| MATA LACERDA - ESTACIO - RIO DE JANEIRO - RJ      |          1 |
| OSCAR CURY - BOM RETIRO - PATOS DE MINAS - MG     |          1 |
| RIACHUELO - CENTRO - RIO DE JANEIRO - RJ          |          1 |
| RUA MARECHAL DEODORO DA FONSCECA - BOA VISTA - PE |          1 |
+---------------------------------------------------+------------+
--NA TEORIA, JOÃO TEM DOIS TELEFONES, MAS, NA PRÁTICA, ELE TEM APENAS UM, COMO MOSTRA A TABELA DO GROUP BY. ISSO ACONTECE DEVIDO À FALTA DE MODELAGEM FORMAL. 

--tags: adicionar mais de um dado | substituir regristro | substituiondo dado| substituir dados | substituindo registro
|848H8| PAG:
------------------------------------------------------------------------------

/* MODELAGEM FORMAL*/

--PRIMEIRA FORMA NORMAL

1 - TODO CAMPO VETORIZADO SE TORNARÁ OUTRA TABELA

[AZUL, AMARELO, VERDE, LARANJA] - ELEMENTOS DE UM MESMO TIPO
[KA, FIT, FIESTA, CIVIC, UNO] - VETOR DE CARROS

2 - TODO CAMPO MULTIVALORADO SE TONNARÁ OUTRA TABELA
+---------------------------------------------------+
| ENDERECO                                          |
+---------------------------------------------------+
| MATA LACERDA - ESTACIO - RIO DE JANEIRO - RJ      |
| RIACHUELO - CENTRO - RIO DE JANEIRO - RJ          |
| OSCAR CURY - BOM RETIRO - PATOS DE MINAS - MG     |
| RUA MARECHAL DEODORO DA FONSCECA - BOA VISTA - PE |
| MAMOEIRO - CENTRO - SÃO PAULO - PE                |
+---------------------------------------------------+
--A TABELA ENDEREÇO POSSUI QUATRO VALORES DIFERENTE

3 - TODA TABELA NECESSITA DE, PELO MENOS, UM CAMPO QUE IDENTIFIQUE TODO O REGISTRO COMO SENDO ÚNICO (CHAVE PRIMÁRIA)

CHAVE PRIMÁRIA NATURAL: CPF
CHAVE PRIMÁRIA ARTICIAL: NUMERAÇÃO ATRIBUIDA AO REGRISTRO; PAPEL DE SENHA; LISTA DE ESPERA 

--tags:	
|00JIU| PAG:
------------------------------------------------------------------------------	

/* CARDINALIDADE */
--QUEM DEFINE É A REGRA DE NEGÓCIO

/* PRIMERO ALGARISMO: OBRIGATORIEDADE
	0 - NÃO OBRIGATÓRIO (FALSO)
	1 - OBRIGATORIO (VERDADEIRO)
	
	SEGUNDO ALGARISMO: CARDINALIDADE
	1 - MÁXIMO UM DADO
	N - MAIS DE UM DADO
*/

--tags:
Q2A3D| PAG:
------------------------------------------------------------------------------

/* FOREIGN KEY - CHAVE ENTRANGERIA (FK) */

--É A CHAVE PRIMÁRIA DE UMA TABELA QUE VAI ATÉ A OUTRA TABELA FAZER A REFERÊNCIA
--EM RELACIONAMENTOS 1 X 1, A CHAVE ENTRANGEIRA FICARÁ NA TABELA MAIS FRACA
--EM RELACIONAMENTOS 1 X N, A CHAVE ESTRANGEIRA FICARÁ SEMPRE NA TABELA N
--RELACIONAMENTO 1 X 1 USA-SE UNIQUE PARA TRAVAR

--tags:
|A32S5| PAG:
------------------------------------------------------------------------------

/* NOVO PRJETO COM MODELAGEM DE CLIENTE */

CREATE DATABASE COMERCIO;
USE COMERCIO;

CREATE TABLE CLIENTE (
	IDCLIENTE INT PRIMARY KEY AUTO_INCREMENT, --ID INCREMENTADO AUTOMATICAMENTE NO CADASTRO
	NOME VARCHAR(30) NOT NULL, --NOT NULL FAZ COM QUE O PREENCHIMENTO DO CAMPO SEJA OBRIGATÓRIO
	SEXO ENUM('M','F') NOT NULL,
	EMAIL VARCHAR(50) UNIQUE, --PARA NÃO REPETIR VALORES
	CPF VARCHAR(15) UNIQUE
	
);
+-----------+---------------+------+-----+---------+----------------+
| Field     | Type          | Null | Key | Default | Extra          |
+-----------+---------------+------+-----+---------+----------------+
| IDCLIENTE | int(11)       | NO   | PRI | NULL    | auto_increment |
| NOME      | varchar(30)   | NO   |     | NULL    |                |
| SEXO      | enum('M','F') | NO   |     | NULL    |                |
| EMAIL     | varchar(50)   | YES  | UNI | NULL    |                |
| CPF       | varchar(15)   | YES  | UNI | NULL    |                |
+-----------+---------------+------+-----+---------+----------------+


CREATE TABLE TELEFONE(
	IDTELEFONE INT PRIMARY KEY AUTO_INCREMENT,
	TIPO ENUM('COM','RES','CEL'),
	NUMERO VARCHAR(10),
	ID_CLIENTE INT,
	FOREIGN KEY (ID_CLIENTE) --O "CLIENTE" INDICA QUE VEM DA TABELA CLIENTE
	REFERENCES CLIENTE(IDCLIENTE)
);
+------------+-------------------------+------+-----+---------+----------------+
| Field      | Type                    | Null | Key | Default | Extra          |
+------------+-------------------------+------+-----+---------+----------------+
| IDTELEFONE | int(11)                 | NO   | PRI | NULL    | auto_increment |
| TIPO       | enum('COM','RES','CEL') | YES  |     | NULL    |                |
| NUMERO     | varchar(10)             | YES  |     | NULL    |                |
| ID_CLIENTE | int(11)                 | YES  | MUL | NULL    |                |
+------------+-------------------------+------+-----+---------+----------------+


CREATE TABLE ENDERECO(
	IDENDERECO INT PRIMARY KEY AUTO_INCREMENT,
	RUA VARCHAR(30) NOT NULL,
	BAIRRO VARCHAR(30) NOT NULL,
	CIDADE VARCHAR (30) NOT NULL,
	ESTADO CHAR(2) NOT NULL,
	ID_CLIENTE INT UNIQUE,
	FOREIGN KEY (ID_CLIENTE) --CHAVE ESTRANGEIRA TEM _ 
	REFERENCES CLIENTE(IDCLIENTE)   --CHAVE PRIMÁRIA NÃO TEM _ 
);
+------------+-------------+------+-----+---------+----------------+
| Field      | Type        | Null | Key | Default | Extra          |
+------------+-------------+------+-----+---------+----------------+
| IDENDERECO | int(11)     | NO   | PRI | NULL    | auto_increment |
| RUA        | varchar(30) | NO   |     | NULL    |                |
| BAIRRO     | varchar(30) | NO   |     | NULL    |                |
| CIDADE     | varchar(30) | NO   |     | NULL    |                |
| ESTADO     | char(2)     | NO   |     | NULL    |                |
| ID_CLIENTE | int(11)     | YES  | UNI | NULL    |                |
+------------+-------------+------+-----+---------+----------------+

--tag:
|Z5135| PAG:
------------------------------------------------------------------------------

/*INSERINDO REGISTROS*/

--CLIENTE
INSERT INTO CLIENTE VALUES (NULL,'JOAO','M','JOAO@IG.COM','98547-6');
INSERT INTO CLIENTE VALUES (NULL,'CARLOS','M','CARLOS@TERRA.COM','86664-7');
INSERT INTO CLIENTE VALUES (NULL,'ANA','F','ANA@GLOBO.COM','75658-5');
INSERT INTO CLIENTE VALUES (NULL,'JORGE','M','JORGE@IG.COM','88657-5');
INSERT INTO CLIENTE VALUES (NULL,'CLARA','F',NULL,'99754-7');
INSERT INTO CLIENTE VALUES (NULL,'CELIA','F','JOAO@TERRA.COM','77558-5');
INSERT INTO CLIENTE VALUES (NULL, 'PAULA','F','PAULA@GMAIL.COM','856941204-50');
INSERT INTO CLIENTE VALUES (NULL, 'JÚLIA','F','JÚLIA@GMAIL.COM','021845498-50');
INSERT INTO CLIENTE VALUES (NULL, 'ROBERTA','F','ROBERTA@GMAIL.COM','06515165-50');

--CORRIGINDO
INSERT INTO CLIENTE VALUES (NULL,'ANOTINO','M',NULL,'78558-6');
INSERT INTO CLIENTE VALUES(NULL,'JOAO','M',NULL,'86695-6');

+-----------+---------+------+-------------------+--------------+
| IDCLIENTE | NOME    | SEXO | EMAIL             | CPF          |
+-----------+---------+------+-------------------+--------------+
|         1 | JOAO    | M    | JOAO@IG.COM       | 98547-6      |
|         2 | CARLOS  | M    | CARLOS@TERRA.COM  | 86664-7      |
|         3 | ANA     | F    | ANA@GLOBO.COM     | 75658-5      |
|         4 | JORGE   | M    | JORGE@IG.COM      | 88657-5      |
|         5 | CLARA   | F    | NULL              | 99754-7      |
|         6 | CELIA   | F    | JOAO@TERRA.COM    | 77558-5      |
|         7 | PAULA   | F    | PAULA@GMAIL.COM   | 856941204-50 |
|         8 | JÚLIA   | F    | JÚLIA@GMAIL.COM   | 021845498-50 |
|         9 | ROBERTA | F    | ROBERTA@GMAIL.COM | 06515165-50  |
|        10 | ANOTINO | M    | NULL              | 78558-6      |
|        11 | JOAO    | M    | NULL              | 86695-6      |
+-----------+---------+------+-------------------+--------------+

--ENDEREÇO
INSERT INTO ENDERECO VALUES (NULL,'RUA A','CENTRO','BELO HORIZONTE','MG',1);
INSERT INTO ENDERECO VALUES (NULL,'RUA B','CENTRO','RIO DE JANEIRO','RJ',2);
INSERT INTO ENDERECO VALUES (NULL,'RUA C','CENTRO','CAMPINAS','SP',3);
INSERT INTO ENDERECO VALUES (NULL,'RUA D','CENTRO','RECIFE','PE',4);
INSERT INTO ENDERECO VALUES (NULL,'RUA E','CENTRO','NOBRE','PE',5);
INSERT INTO ENDERECO VALUES (NULL,'RUA F','CENTRO','SALGUEIRO','RJ',6);
INSERT INTO ENDERECO VALUES (NULL,'RUA F','CENTRO','TAUBATE','SP',7);
INSERT INTO ENDERECO VALUES (NULL,'RUA F','CENTRO','ITAGUAÍ','RJ',9);
INSERT INTO ENDERECO VALUES (NULL,'RUA NATIONAL','CENTRO','SÃO PAULO','SP',10);
INSERT INTO ENDERECO VALUES (NULL,'RUA AURORA','CENTRO','SÃO PAULO','SP',11);
INSERT INTO ENDERECO VALUES (NULL,'RUA 23','CENTRO','SÃO PAULO','SP',12);
+------------+--------------+--------+----------------+--------+------------+
| IDENDERECO | RUA          | BAIRRO | CIDADE         | ESTADO | ID_CLIENTE |
+------------+--------------+--------+----------------+--------+------------+
|          1 | RUA A        | CENTRO | BELO HORIZONTE | MG     |          1 |
|          2 | RUA B        | CENTRO | RIO DE JANEIRO | RJ     |          2 |
|          3 | RUA C        | CENTRO | CAMPINAS       | SP     |          3 |
|          4 | RUA D        | CENTRO | RECIFE         | PE     |          4 |
|          5 | RUA E        | CENTRO | NOBRE          | PE     |          5 |
|          6 | RUA F        | CENTRO | SALGUEIRO      | RJ     |          6 |
|          7 | RUA F        | CENTRO | TAUBATE        | SP     |          7 |
|          8 | RUA F        | CENTRO | ITAGUAÍ        | RJ     |          9 |
|          9 | RUA NATIONAL | CENTRO | SÃO PAULO      | SP     |         10 |
|         10 | RUA AURORA   | CENTRO | SÃO PAULO      | SP     |         11 |
+------------+--------------+--------+----------------+--------+------------+

--TELEFONE
INSERT INTO TELEFONE VALUES(NULL,'CEL','85478632', 1);
INSERT INTO TELEFONE VALUES(NULL,'CEL','45214789', 1);
INSERT INTO TELEFONE VALUES(NULL,'COM','51125565', 3);
INSERT INTO TELEFONE VALUES(NULL,'CEL','15188965', 2);
INSERT INTO TELEFONE VALUES(NULL,'CEL','84565132', 4);
INSERT INTO TELEFONE VALUES(NULL,'RES','46851315', 7);
INSERT INTO TELEFONE VALUES(NULL,'COM','51895462', 6);
INSERT INTO TELEFONE VALUES(NULL,'CEL','46581846', 1);
INSERT INTO TELEFONE VALUES(NULL,'CEL','98541651', 7);
INSERT INTO TELEFONE VALUES(NULL,'RES','89541615', 3);
INSERT INTO TELEFONE VALUES(NULL,'COM','98162181', 6);
INSERT INTO TELEFONE VALUES(NULL,'CEL','84561521', 10);
INSERT INTO TELEFONE VALUES(NULL,'RES','54655654', 11);
INSERT INTO TELEFONE VALUES(NULL,'COM','65121515', 12);
+------------+------+----------+------------+
| IDTELEFONE | TIPO | NUMERO   | ID_CLIENTE |
+------------+------+----------+------------+
|          1 | CEL  | 85478632 |          1 |
|          2 | CEL  | 45214789 |          1 |
|          3 | COM  | 51125565 |          3 |
|          4 | CEL  | 15188965 |          2 |
|          5 | CEL  | 84565132 |          4 |
|          6 | RES  | 46851315 |          7 |
|          7 | COM  | 51895462 |          6 |
|          8 | CEL  | 46581846 |          1 |
|          9 | CEL  | 98541651 |          7 |
|         10 | RES  | 89541615 |          3 |
|         11 | COM  | 98162181 |          6 |
|         12 | CEL  | 84561521 |         10 |
|         13 | RES  | 54655654 |         11 |
+------------+------+----------+------------+

--tags: inserir registros | adicionar registros 
|W5158| PAG:
------------------------------------------------------------------------------

/* SELEÇÃO, PROJEÇÃO E JUNÇÃO */

/* PROJEÇÃO*/
--CLÁUSUA: AS

SELECT NOW() "DATA";
+---------------------+
| DATA                |
+---------------------+
| 2019-07-14 20:27:57 |
+---------------------+

SELECT NOME, NOW() AS "DATA" 
FROM CLIENTE; --PROJEÇÃO
+---------+---------------------+
| NOME    | DATA                |
+---------+---------------------+
| JOAO    | 2019-07-14 20:28:14 |
| CARLOS  | 2019-07-14 20:28:14 |
| ANA     | 2019-07-14 20:28:14 |
| JORGE   | 2019-07-14 20:28:14 |
| CLARA   | 2019-07-14 20:28:14 |
| CELIA   | 2019-07-14 20:28:14 |
| PAULA   | 2019-07-14 20:28:14 |
| JÚLIA   | 2019-07-14 20:28:14 |
| ROBERTA | 2019-07-14 20:28:14 |
| ANOTINO | 2019-07-14 20:28:14 |
| JOAO    | 2019-07-14 20:28:14 |
+---------+---------------------+

/* SELEÇÃO */
--TEORIA DOS CONJUNTOS
--CLÁUSUA: WHERE

SELECT NOME, SEXO FROM CLIENTE;
+---------+------+
| NOME    | SEXO |
+---------+------+
| JOAO    | M    |
| CARLOS  | M    |
| ANA     | F    |
| JORGE   | M    |
| CLARA   | F    |
| CELIA   | F    |
| PAULA   | F    |
| JÚLIA   | F    |
| ROBERTA | F    |
| ANOTINO | M    |
| JOAO    | M    |
+---------+------+

SELECT NOME, SEXO 
FROM CLIENTE 
WHERE SEXO ='M';
+---------+------+
| NOME    | SEXO |
+---------+------+
| JOAO    | M    |
| CARLOS  | M    |
| JORGE   | M    |
| ANOTINO | M    |
| JOAO    | M    |
+---------+------+

UPDATE CLIENTE 
SET SEXO ='F' 
WHERE IDCLIENTE= 5; 


/* JUNÇÃO*/

--EXEMPLO: NOME, SEXO, BAIRRO, CIDADE, DATA
SELECT NOME, SEXO, BAIRRO, CIDADE, NOW() AS "DATA"
FROM CLIENTE, ENDERECO 
WHERE IDCLIENTE=ID_CLIENTE --NÃO FAZER ISSO POIS HÁ UM LAPSO DE LÓGICA(SEMPRE SERÁ VERDADE)
AND BAIRRO = 'CENTRO';

/*JUNÇÃO */
--CLÁUSULA: JOIN
SELECT NOME, SEXO, BAIRRO, CIDADE --PROJEÇÃO
FROM CLIENTE
INNER JOIN ENDERECO --JUNÇÃO
ON IDCLIENTE=ID_CLIENTE
WHERE BAIRRO = 'CENTRO'; --SELEÇÃO

+---------+------+--------+----------------+
| NOME    | SEXO | BAIRRO | CIDADE         |
+---------+------+--------+----------------+
| JOAO    | M    | CENTRO | BELO HORIZONTE |
| CARLOS  | M    | CENTRO | RIO DE JANEIRO |
| ANA     | F    | CENTRO | CAMPINAS       |
| JORGE   | M    | CENTRO | RECIFE         |
| CLARA   | F    | CENTRO | NOBRE          |
| CELIA   | F    | CENTRO | SALGUEIRO      |
| PAULA   | F    | CENTRO | TAUBATE        |
| ROBERTA | F    | CENTRO | ITAGUAÍ        |
| ANOTINO | M    | CENTRO | SÃO PAULO      |
| JOAO    | M    | CENTRO | SÃO PAULO      |
+---------+------+--------+----------------+

SELECT NOME, SEXO, BAIRRO, CLIDADE, TIPO, NUMERO
FROM CLIENTE
INNER JOIN ENDERECO
ON IDCLIENTE = ID_CLIENTE
INNER JOIN TELEFONE
ON IDCLIENTE = ID_CLIENTE;

ERROR 1054 (42S22): Unknown column 'CLIDADE' in 'field list'

--A COLUNA ID_CLIENTE ESTÁ AMBÍGUA, OU SEJA, ESTÁ EM DUAS TABELAS. QUANDO A CHAVE É IGUAL, DESSA FORMA, É NECESSÁRIO FAZER PONTEIROS.
--REPARE NOS PONTEIROS A SEGUIR E COMPARE COM A QUERY ANTERIROR:

SELECT CLIENTE.NOME, CLIENTE.SEXO, ENDERECO.BAIRRO, ENDERECO.CIDADE, TELEFONE.TIPO, TELEFONE.NUMERO
FROM CLIENTE
INNER JOIN ENDERECO
ON CLIENTE.IDCLIENTE = ENDERECO.ID_CLIENTE
INNER JOIN TELEFONE
ON CLIENTE.IDCLIENTE= TELEFONE.ID_CLIENTE;

--SEMPRE O NOME DA TABELA + PONTO + NOME DA COLUNA
--NECESSÁRIO TAMBÉM PONTEIRAR AS CHAVES COM OS NOMES DAS TABELAS
--RESULTADO
+---------+------+--------+----------------+------+----------+
| NOME    | SEXO | BAIRRO | CIDADE         | TIPO | NUMERO   |
+---------+------+--------+----------------+------+----------+
| JOAO    | M    | CENTRO | BELO HORIZONTE | CEL  | 85478632 |
| JOAO    | M    | CENTRO | BELO HORIZONTE | CEL  | 45214789 |
| JOAO    | M    | CENTRO | BELO HORIZONTE | CEL  | 46581846 |
| CARLOS  | M    | CENTRO | RIO DE JANEIRO | CEL  | 15188965 |
| ANA     | F    | CENTRO | CAMPINAS       | COM  | 51125565 |
| ANA     | F    | CENTRO | CAMPINAS       | RES  | 89541615 |
| JORGE   | M    | CENTRO | RECIFE         | CEL  | 84565132 |
| CELIA   | F    | CENTRO | SALGUEIRO      | COM  | 51895462 |
| CELIA   | F    | CENTRO | SALGUEIRO      | COM  | 98162181 |
| PAULA   | F    | CENTRO | TAUBATE        | RES  | 46851315 |
| PAULA   | F    | CENTRO | TAUBATE        | CEL  | 98541651 |
| ANOTINO | M    | CENTRO | SÃO PAULO      | CEL  | 84561521 |
| JOAO    | M    | CENTRO | SÃO PAULO      | RES  | 54655654 |
+---------+------+--------+----------------+------+----------+

--INNER JOIN
--JEFT JOIN: TUDO QUE ESTÁ PARA ESQUERDA DO CONJUNTO (DIAGRAMA DE VENN)
--RIGTH JOIN: TUDO QUE ESTÁ PARA DIREITA DO CONJUNTO (DIAGRAMA DE VENN)

--tags: ponteiramento | mapeamento | apelidos | ponteirar | mapear
|E8453| PAG:
------------------------------------------------------------------------------

/*JUNÇÃO COM APELIDOS*/

--C, E e T SÃO APELIDOS DAS TABELAS CLIENTES, ENDEREÇO E TELEFONE, REPECTIVAMENTE
SELECT C.NOME, C.SEXO, E.BAIRRO, E.CIDADE, T.TIPO, T.NUMERO
FROM CLIENTE C 
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE;
--PARA APELIDAR ELA, BASTA INSERI-LO ANTES DO NOME DA COLUNA(ANTES DO PONTO)
+---------+------+--------+----------------+------+----------+
| NOME    | SEXO | BAIRRO | CIDADE         | TIPO | NUMERO   |
+---------+------+--------+----------------+------+----------+
| JOAO    | M    | CENTRO | BELO HORIZONTE | CEL  | 85478632 |
| JOAO    | M    | CENTRO | BELO HORIZONTE | CEL  | 45214789 |
| JOAO    | M    | CENTRO | BELO HORIZONTE | CEL  | 46581846 |
| CARLOS  | M    | CENTRO | RIO DE JANEIRO | CEL  | 15188965 |
| ANA     | F    | CENTRO | CAMPINAS       | COM  | 51125565 |
| ANA     | F    | CENTRO | CAMPINAS       | RES  | 89541615 |
| JORGE   | M    | CENTRO | RECIFE         | CEL  | 84565132 |
| CELIA   | F    | CENTRO | SALGUEIRO      | COM  | 51895462 |
| CELIA   | F    | CENTRO | SALGUEIRO      | COM  | 98162181 |
| PAULA   | F    | CENTRO | TAUBATE        | RES  | 46851315 |
| PAULA   | F    | CENTRO | TAUBATE        | CEL  | 98541651 |
| ANOTINO | M    | CENTRO | SÃO PAULO      | CEL  | 84561521 |
| JOAO    | M    | CENTRO | SÃO PAULO      | RES  | 54655654 |
+---------+------+--------+----------------+------+----------+

SELECT C.NOME, C.SEXO, E.BAIRRO, E.CIDADE, T.TIPO, T.NUMERO
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE
WHERE SEXO='M';
+---------+------+--------+----------------+------+----------+
| NOME    | SEXO | BAIRRO | CIDADE         | TIPO | NUMERO   |
+---------+------+--------+----------------+------+----------+
| JOAO    | M    | CENTRO | BELO HORIZONTE | CEL  | 85478632 |
| JOAO    | M    | CENTRO | BELO HORIZONTE | CEL  | 45214789 |
| JOAO    | M    | CENTRO | BELO HORIZONTE | CEL  | 46581846 |
| CARLOS  | M    | CENTRO | RIO DE JANEIRO | CEL  | 15188965 |
| JORGE   | M    | CENTRO | RECIFE         | CEL  | 84565132 |
| ANOTINO | M    | CENTRO | SÃO PAULO      | CEL  | 84561521 |
| JOAO    | M    | CENTRO | SÃO PAULO      | RES  | 54655654 |
+---------+------+--------+----------------+------+----------+

/* RESUMINDO 
NOW() / NOW () AS -> PROJEÇÃO
EX.: "NOME" PROJETADO PARA SER EXIBIDO COMO "CLIENTE"

WHERE -> SELEÇÃO
EX.: FILTRAR APENAS SEXO MASCULINO

INNER JOIN <TABELA> ON -> JUNÇÃO 
EX.: EXIBIR DADOS DE DUAS TABELAS DISTINTAS NUMA UNICA TABELA, COMO NOME - DA TABELA
CLIENTE - JUNTO COM BAIRRO E NÚMERO - DAS TABELAS ENDEREÇO E TELEFONE, RESPECTIVAMENTE. 

EXEMPLO

EM UMA TABELA CUJOS TÍTULOS DAS COLUNAS SÃO NOME, BAIXO E TELEFONE, RESPECTIVAMENTE,
A PROJEÇÃO É O NOME QUE EU QUERO EXIBIR NA BUSCA, OU SEJA, "NOME", APÓS A PROJEÇÃO, É 
EXIBIDO COMO "CLIENTE". PROJEÇÃO SÃO OS DADOS DE TABELAS DIFERENTES QUE SERÁ EXIBIDO EM UMA ÚNICA
TABELA. SELEÇÃO É O FILTRO COMO, POR EXEMPLO, EXIBIR APENAS QUEM MORA NO CENTRO, OU APENAS PESSOAS DO SEXO F.

*/

--tags:
|D5153| PAG:
------------------------------------------------------------------------------

/* QUERIES -  SELEÇÃO, PROJEÇÃO E JUNÇÃO */

--PARA UMA CAMPANHA DE MARKETING, O SETOR SOLICITOU UM RELATÓRI COM NOME, EMAIL E TELEFONE CELULAR DOS CLIENTES QUE MORAM NO ESTADO DO RIO DE JANEIRO. VOCÊ TERÁ QUE PASSAR A QUERY PARA GERAR O RELATÓRIO PARA O PROGRAMADOR

SELECT C.NOME, C.EMAIL, T.NUMERO
FROM CLIENTE C
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
WHERE TIPO = 'CEL' AND ESTADO = 'RJ';

+--------+------------------+----------+
| NOME   | EMAIL            | NUMERO   |
+--------+------------------+----------+
| CARLOS | CARLOS@TERRA.COM | 15188965 |
+--------+------------------+----------+

--PARA UMA CAMPANHA DE PRODUTOS DE BELEZA, O COMERCIAL SOLICITOU UM RELATÓRIO COM NOME, EMAIL E TELEFONE CELULAR DAS MULHERES QUE MORAM NO ESTADO DE SÃO PAULO. VOCÊ TERÁ QUE PASSAR A QUERY PARA GERAR O RELATÓRIO PARA O PROGRAMADOR

SELECT C.NOME, C.EMAIL, T.NUMERO
FROM CLIENTE C
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
WHERE SEXO='F' AND CIDADE = 'SÃO PAULO';
	
+---------+-------------------+----------+
| NOME    | EMAIL             | NUMERO   |
+---------+-------------------+----------+
| PAULA   | PAULA@GMAIL.COM   | 84561521 |
| JÚLIA   | JÚLIA@GMAIL.COM   | 54655654 |
| ROBERTA | ROBERTA@GMAIL.COM | 65121515 |
+---------+-------------------+----------+

--tags:
|C2132| PAG:
------------------------------------------------------------------------------

/* FUNÇÃO IFNULL */
--CASO ALGUMA COLUNA DA TABELA ESTEJA VAZIA, ESTA FUNÇÃO PERMITE QUE VOCÊ A PREENCHA COM ALGUMA MENSAGEM, EVITANDO A EXIBIÇÃO DO 'NULL'
 
 IFNULL(C.EMAIL,'SEM EMAIL') 

SELECT 	C.NOME AS "CLIENTE", IFNULL(C.EMAIL,'SEM EMAIL') AS "EMAIL", 
		T.NUMERO AS "CELULAR"		
FROM CLIENTE C
INNER JOIN TELEFONE T 
ON C.IDCLIENTE = T.ID_CLIENTE
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
WHERE TIPO = 'CEL' AND ESTADO = 'RJ';

--tags: comando iffnull | filtrar colunas vazias | filtrando dados vazios | nulos
|R5849| PAG:
------------------------------------------------------------------------------

/* VIEWS OU VISÕES */

SELECT C.NOME, C.SEXO, 
		IFNULL(C.EMAIL,'SEM EMAIL') AS "EMAIL", T.TIPO, T.NUMERO, E.BAIRRO, E.CIDADE, E.ESTADO
FROM CLIENTE C 
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE;

--CRIANDO A VIEW
CREATE VIEW RELATORIO AS 
SELECT 	C.NOME, 
		C.SEXO, 
		IFNULL(C.EMAIL,'SEM EMAIL') AS "EMAIL", 
		T.TIPO, 
		T.NUMERO, 
		E.BAIRRO, 
		E.CIDADE, 
		E.ESTADO
FROM CLIENTE C 
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE;

SELECT * FROM RELATORIO;
+---------+------+------------------+------+----------+--------+
| NOME    | SEXO | EMAIL            | TIPO | NUMERO   | BAIRRO |
+---------+------+------------------+------+----------+--------+
| JOAO    | M    | JOAO@IG.COM      | CEL  | 85478632 | CENTRO |
| JOAO    | M    | JOAO@IG.COM      | CEL  | 45214789 | CENTRO |
| JOAO    | M    | JOAO@IG.COM      | CEL  | 46581846 | CENTRO |
| CARLOS  | M    | CARLOS@TERRA.COM | CEL  | 15188965 | CENTRO |
| ANA     | F    | ANA@GLOBO.COM    | COM  | 51125565 | CENTRO |
| ANA     | F    | ANA@GLOBO.COM    | RES  | 89541615 | CENTRO |
| JORGE   | M    | JORGE@IG.COM     | CEL  | 84565132 | CENTRO |
| CELIA   | F    | JOAO@TERRA.COM   | COM  | 51895462 | CENTRO |
| CELIA   | F    | JOAO@TERRA.COM   | COM  | 98162181 | CENTRO |
| PAULA   | F    | PAULA@GMAIL.COM  | RES  | 46851315 | CENTRO |
| PAULA   | F    | PAULA@GMAIL.COM  | CEL  | 98541651 | CENTRO | 
| ANOTINO | M    | SEM EMAIL        | CEL  | 84561521 | CENTRO | 
| JOAO    | M    | SEM EMAIL        | RES  | 54655654 | CENTRO |
+---------+------+------------------+------+----------+--------+
+----------------+--------+
| CIDADE         | ESTADO |
+----------------+--------+
| BELO HORIZONTE | MG     |
| BELO HORIZONTE | MG     |
| BELO HORIZONTE | MG     |
| RIO DE JANEIRO | RJ     |
| CAMPINAS       | SP     |
| CAMPINAS       | SP     |
| RECIFE         | PE     |
| SALGUEIRO      | RJ     |
| SALGUEIRO      | RJ     |
| TAUBATE        | SP     |
| TAUBATE        | SP     |
| SÃO PAULO      | SP     |
| SÃO PAULO      | SP     |
+----------------+--------+

--OU SEJA, CRIA-SE UMA VIEW QUANDO É NECESSÁRIO USAR A MESMA QUERY VÁRIAS VEZES. EM TERMOS DE PERFORMANCE, AS VIEWS NÃO SÃO RECOMENDADAS, VISTO QUE HÁ UMA QUERY DENTRO DE OUTRA QUERY.

--FILTRANDO A VIEW
SELECT * FROM RELATORIO
WHERE SEXO = 'F';
+-------+------+-----------------+------+----------+--------+-----------+
| NOME  | SEXO | EMAIL           | TIPO | NUMERO   | BAIRRO | CIDADE    | 
+-------+------+-----------------+------+----------+--------+-----------+
| ANA   | F    | ANA@GLOBO.COM   | COM  | 51125565 | CENTRO | CAMPINAS  |
| ANA   | F    | ANA@GLOBO.COM   | RES  | 89541615 | CENTRO | CAMPINAS  |
| CELIA | F    | JOAO@TERRA.COM  | COM  | 51895462 | CENTRO | SALGUEIRO | 
| CELIA | F    | JOAO@TERRA.COM  | COM  | 98162181 | CENTRO | SALGUEIRO |
| PAULA | F    | PAULA@GMAIL.COM | RES  | 46851315 | CENTRO | TAUBATE   |
| PAULA | F    | PAULA@GMAIL.COM | CEL  | 98541651 | CENTRO | TAUBATE   |
+-------+------+-----------------+------+----------+--------+-----------+
+--------+
| ESTADO |
+--------+
| SP     |
| SP     |
| RJ     |
| RJ     |
| SP     |
| SP     |
+--------+
--EXEMPLO DE QUERY DENTOR DA VIEW

--AS VIEWS APARECEM COMO TABELAS
SHOW TABLES;
+--------------------+
| Tables_in_comercio |
+--------------------+
| cliente            |
| endereco           |
| relatorio          |
| telefone           |
+--------------------+
--VISTO ISSO, É NECESSÁRIO SEMPRE NOMEAR AS VIREWS COM PREFIXOS PADRÃO PARA DISTINGUIR O QUE É VIEW E O QUE É TABELA


-- EXLUINDO UMA VIEW
DROP VIEW RELATORIO; 

-- CRIANDO VIEW DE FORMA CORRETA
CREATE VIEW V_RELATORIO AS 
SELECT 	C.NOME, 
		C.SEXO, 
		IFNULL(C.EMAIL,'SEM EMAIL') AS "EMAIL", 
		T.TIPO, 
		T.NUMERO, 
		E.BAIRRO, 
		E.CIDADE, 
		E.ESTADO
FROM CLIENTE C 
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE;

-- SELECT ATRAVÉS DA VIEW
SELECT NOME, SEXO, CIDADE 
FROM V_RELATORIO;
+---------+------+----------------+
| NOME    | SEXO | CIDADE         |
+---------+------+----------------+
| JOAO    | M    | BELO HORIZONTE |
| JOAO    | M    | BELO HORIZONTE |
| JOAO    | M    | BELO HORIZONTE |
| CARLOS  | M    | RIO DE JANEIRO |
| ANA     | F    | CAMPINAS       |
| ANA     | F    | CAMPINAS       |
| JORGE   | M    | RECIFE         |
| CELIA   | F    | SALGUEIRO      |
| CELIA   | F    | SALGUEIRO      |
| PAULA   | F    | TAUBATE        |
| PAULA   | F    | TAUBATE        |
| ANOTINO | M    | SÃO PAULO      |
| JOAO    | M    | SÃO PAULO      |
+---------+------+----------------+

--OBS: NÃO É POSSÍVEL INSERIR NEM DELETAR REGISTROS EM VIEWS QUE POSSUEM O COMANDO JOIN
INSERT INTO RELATORIO VALUES ('ROMARIO','M',NULL,'RES','8465418484','BARRA','RIO DE JANEIRO','RJ'); 
ERROR 1146 (42S02): Table comercio.relatorio doesnt exist

DELETE FROM V_RELATORIO
WHERE NOME = 'JOAO';
ERROR 1395 (HY000): Can not delete from join view 'comercio.v_relatorio'

--tags: excluir views | criar views | filtrar views | criando views
|R5849| PAG:
------------------------------------------------------------------------------

/* ORDENANDO A QUERY */

--POR ORDEM ALFABETICA
SELECT NOME, SEXO, CPF, CIDADE
FROM CLIENTE
INNER JOIN ENDERECO
ON IDCLIENTE = ID_CLIENTE
ORDER BY NOME;  
+---------+------+--------------+----------------+
| NOME    | SEXO | CPF          | CIDADE         |
+---------+------+--------------+----------------+
| ANA     | F    | 75658-5      | CAMPINAS       |
| ANOTINO | M    | 78558-6      | SÃO PAULO      |
| CARLOS  | M    | 86664-7      | RIO DE JANEIRO |
| CELIA   | F    | 77558-5      | SALGUEIRO      |
| CLARA   | F    | 99754-7      | NOBRE          |
| JOAO    | M    | 98547-6      | BELO HORIZONTE |
| JOAO    | M    | 86695-6      | SÃO PAULO      |
| JORGE   | M    | 88657-5      | RECIFE         |
| PAULA   | F    | 856941204-50 | TAUBATE        |
| ROBERTA | F    | 06515165-50  | ITAGUAÍ        |
+---------+------+--------------+----------------+
--EXIBIU OS NOMES EM ORDEM ALFABETICA 
--USE O ORDER BY SEMPRE POR ÚLTIMO

--POR COLUNA
SELECT NOME, SEXO, CPF, CIDADE
FROM CLIENTE
INNER JOIN ENDERECO
ON IDCLIENTE = ID_CLIENTE
ORDER BY NOME, CPF ASC;
+---------+------+--------------+----------------+
| NOME    | SEXO | CPF          | CIDADE         |
+---------+------+--------------+----------------+
| ANA     | F    | 75658-5      | CAMPINAS       |
| ANOTINO | M    | 78558-6      | SÃO PAULO      |
| CARLOS  | M    | 86664-7      | RIO DE JANEIRO |
| CELIA   | F    | 77558-5      | SALGUEIRO      |
| CLARA   | F    | 99754-7      | NOBRE          |
| JOAO    | M    | 86695-6      | SÃO PAULO      |
| JOAO    | M    | 98547-6      | BELO HORIZONTE |
| JORGE   | M    | 88657-5      | RECIFE         |
| PAULA   | F    | 856941204-50 | TAUBATE        |
| ROBERTA | F    | 06515165-50  | ITAGUAÍ        |
+---------+------+--------------+----------------+
--ASC SIGNIFICA ASCENDENTE, OU SEJA, DO MAIOR PARA O MENOR


--ORDENANDO PELA ORDEM DA COLUNA
SELECT NOME, SEXO, CPF, CIDADE
FROM CLIENTE
INNER JOIN ENDERECO
ON IDCLIENTE = ID_CLIENTE
ORDER BY 4;
+---------+------+--------------+----------------+
| NOME    | SEXO | CPF          | CIDADE         |
+---------+------+--------------+----------------+
| JOAO    | M    | 98547-6      | BELO HORIZONTE |
| ANA     | F    | 75658-5      | CAMPINAS       |
| ROBERTA | F    | 06515165-50  | ITAGUAÍ        |
| CLARA   | F    | 99754-7      | NOBRE          |
| JORGE   | M    | 88657-5      | RECIFE         |
| CARLOS  | M    | 86664-7      | RIO DE JANEIRO |
| CELIA   | F    | 77558-5      | SALGUEIRO      |
| JOAO    | M    | 86695-6      | SÃO PAULO      |
| ANOTINO | M    | 78558-6      | SÃO PAULO      |
| PAULA   | F    | 856941204-50 | TAUBATE        |
+---------+------+--------------+----------------+
--ORDENOU A CIDADE (4º COLUNA)

--tags: ordenando
|F5689| PAG:
------------------------------------------------------------------------------

/* DBA - DELIMITADOR E ESTADO DO SERVIDOR */
--O DELIMITADOR, COMO O NOME JÁ DIZ, DELIMITA O CÓDIGO. EM OUTRAS PALAVRAS, É COMO O PONTO FINAL DE UMA FRASE.

SELECT * FROM V_RELATORIO --NÃO DELIMITADO
SELECT * FROM V_RELATORIO; --DELIMITADO PELO ";"

--ALTERANDO O DELIMITADOR
DELIMITER $ 
--A PARDIR DE AGORA, O DELIMITADOR SERÁ "$" AO INVÉS DE ";"


--ESTADO DO SERVIDOR
STATUS 

--------------
C:\Program Files (x86)\MySQL\MySQL Server 5.7\bin\mysql.exe  Ver 14.14 Distrib 5.7.20, for Win32 (AMD64)

Connection id:          3 --USUÁRIO LOGADO
Current database:       comercio --BANCO UTILZADO NO MOMENTO
Current user:           root@localhost -- USUÁRIO ULTILIZADO ATUALMENTE
SSL:                    Not in use --PROTOCÓLO DE SEGURAÇA
Using delimiter:        ; --DELIMITADOR DE CÓDIGOS
Server version:         5.7.20-log MySQL Community Server (GPL) --VERSÃO DO SQL
Protocol version:       10 --VERSÃO DO PROTOCOLO
Connection:             localhost via TCP/IP --CONEXÃO
Server characterset:    utf8  --CHARSET
Db     characterset:    utf8
Client characterset:    utf8
Conn.  characterset:    utf8
TCP port:               3306 --PORTA QUE CONECTA AO BANCO
Uptime:                 3 hours 43 min 58 sec --TEMPO QUE O SERVIDOR ESTÁ ATIVO

Threads: 1  Questions: 143  Slow queries: 0  Opens: 112  Flush tables: 1  Open tables: 105  Queries per second avg: 0.010
--------------

--DICA: SEMPRE QUE CHEGAR NA EMPRESA, USE O COMANDO 'STATUS' PARA SABER TODAS AS INFORMAÇÕES SOBRE O BANCO
--OBSERVAÇÕES: ANTENTE-SE AOS ERROS NO DELIMITADOR, TAIS COMO: DELIMITER#, DELIMITER # , ETC... 

--tags:
|G5136|
------------------------------------------------------------------------------

/* PROCEDIMENTOS ARMAZENADOS */
--OS PROCEDIMENTOS SÃO CÓDIGOS DE PROGRAMAÇÃO, ASSIM COMO PHP, C#, PHYTON, NO PRÓBRIO BANCO. GERALMENTE É USADO QUANDO A REGRA DO NEGÓCIO ESTÁ NELE

DELIMITER $ --SEMPRE ALTERAR O DEMILITADOR ANTES DO PROCEDURE


--OS PROCEDIMENTOS SÃO COMPOSTOS POR:
/*

CREATE PROCEDURE NOME()
BEGIN 
	ACAO;
END
$

*/
--EXEMPLO
SELECT 10 + 10 AS "CONTA"$
+-------+
| CONTA |
+-------+
|    20 |
+-------+

--IMPLEMENTANDO A PROCEDURE
CREATE PROCEDURE CONTA()
BEGIN
	SELECT 10 + 10 AS "CONTA";
END 
$

--CHAMANDO A PROCEDURE
CALL CONTA()$
+-------+
| CONTA |
+-------+
|    20 |
+-------+

--APAGANDO PROCEDURES
DROP PROCEDURE CONTA$

--tags: apagar procedures, chamar procedures, ativar procedure
|B1235| PAG:
------------------------------------------------------------------------------

/* PROCEDURES COM PARÂMETROS */
DELIMITER $

CREATE PROCEDURE SOMA(NUMERO1 INT, NUMERO2 INT)
BEGIN
	SELECT NUMERO1 + NUMERO2 AS "CONTA";
END
$

DELIMITER ;
--OBS: SEMPRE MUDAR O DELIMITADOR ANTES (PARA $) E DEPOIS (PARA ; ) DOS PROCEDURES

CALL SOMA(100,78);
+-------+
| CONTA |
+-------+
|   178 |
+-------+

--tags:
|Y2156| PAG:
------------------------------------------------------------------------------

/* PROCEDIMENTOS COM TABELAS */

CREATE TABLE CURSOS(
	IDCURSO INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR (30) NOT NULL,
	HORAS INT (3) NOT NULL,
	VALOR FLOAT (10,2) NOT NULL
);

INSERT INTO CURSOS VALUES (NULL,'BANCO DE DADOS FUNDAMENTAL',25,200.00); 
+---------+----------------------------+-------+--------+
| IDCURSO | NOME                       | HORAS | VALOR  |
+---------+----------------------------+-------+--------+
|       1 | BANCO DE DADOS FUNDAMENTAL |    25 | 200.00 |
+---------+----------------------------+-------+--------+

--ESTE PROCEDIMENTO PERMITIRÁ INSERIR DADOS NA TABELA CURSOS AUTOMATICAMENTE:
DELIMITER #
CREATE PROCEDURE CAD_CURSO(P_NOME VARCHAR(30), P_HORAS INT(3), P_PRECO FLOAT (10,2))
BEGIN
	INSERT INTO CURSOS VALUES (NULL, P_NOME, P_HORAS, P_PRECO);
END
#
DELIMITER ;

--ESTE COMANDO SERVE PARA CHAMAR O PROCEDIMENTO CRIADO ANTERIORMENTE
CALL CAD_CURSO('BI SQL SERVER',35,200.00);

SELECT * FROM CURSOS;
+---------+----------------------------+-------+--------+
| IDCURSO | NOME                       | HORAS | VALOR  |
+---------+----------------------------+-------+--------+
|       1 | BANCO DE DADOS FUNDAMENTAL |    25 | 200.00 |
|       2 | BI SQL SERVER              |    35 | 200.00 |
+---------+----------------------------+-------+--------+

--ESTE PROCEDIMENTO PERMITE VISUALIZAR A TABELA CURSOS SEM PRECISAR USAR O 'SELECT'
DELIMITER #
CREATE PROCEDURE SEL_CURSO()
BEGIN
	SELECT IDCURSO, NOME, HORAS, VALOR
	FROM CURSOS;
END
#
DELIMITER ;

CALL SEL_CURSO();

--tags: inserir dados automaticamente na tabela | usar o procedimento | chamar o procedimento | procedures com tabela
|H1896| PAG:
------------------------------------------------------------------------------

/* FUNÇÕES DE AGREGAÇÃO NUMÉRICAS (FUNÇÕES DE COLUNA) */

--CRIANDO TABELA DE DEMOSTRAÇÃO
CREATE TABLE VENDEDORES(
	IDVENDEDOR INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(30),
	SEXO CHAR(1),
	JANEIRO FLOAT (10,2),
	FEVEREIRO FLOAT (10,2),
	MARCO FLOAT (10,2)
	);

--INSERINDO VALORES DE DEMOSTRAÇÃO
INSERT INTO VENDEDORES VALUES (NULL,'ADRIANO','M','1258.20','1254.30','5841.25');
INSERT INTO VENDEDORES VALUES (NULL,'VANESSA','F','1156.32','5115.60','5151.55');
INSERT INTO VENDEDORES VALUES (NULL,'CLAUDIO','M','1651.51','1448.30','4251.75');
INSERT INTO VENDEDORES VALUES (NULL,'ANNA','F','4287.12','4274.75','7542.75');
INSERT INTO VENDEDORES VALUES (NULL,'LUCIO','M','8644.20','5687.87','7895.54');
INSERT INTO VENDEDORES VALUES (NULL,'PAULO','M','6871.50','2014.04','4057.87');
INSERT INTO VENDEDORES VALUES (NULL,'AUGUSTO','M','7856.01','4507.74','4780.53');
INSERT INTO VENDEDORES VALUES (NULL,'BRUNA','M','2872.24','7453.10','2120.20');

+------------+---------+------+---------+-----------+---------+
| IDVENDEDOR | NOME    | SEXO | JANEIRO | FEVEREIRO | MARCO   |
+------------+---------+------+---------+-----------+---------+
|          1 | ADRIANO | M    | 1258.20 |   1254.30 | 5841.25 |
|          2 | VANESSA | F    | 1156.32 |   5115.60 | 5151.55 |
|          3 | CLAUDIO | M    | 1651.51 |   1448.30 | 4251.75 |
|          4 | ANNA    | F    | 4287.12 |   4274.75 | 7542.75 |
|          5 | LUCIO   | M    | 8644.20 |   5687.87 | 7895.54 |
|          6 | PAULO   | M    | 6871.50 |   2014.04 | 4057.87 |
|          7 | AUGUSTO | M    | 7856.01 |   4507.74 | 4780.53 |
|          8 | BRUNA   | M    | 2872.24 |   7453.10 | 2120.20 |
+------------+---------+------+---------+-----------+---------+

--MAX - TRAZ O VALOR MÁXIMO DE UMA COLUNA
SELECT MAX(FEVEREIRO) AS MAIOR_FEV 
FROM VENDEDORES;
+-----------+
| MAIOR_FEV |
+-----------+
|   7453.10 |
+-----------+

-- MIN - TRAZ O VALOR MÍNIMO DE UMA COLUNA
SELECT MIN(FEVEREIRO) AS MENOR_FEV 
FROM VENDEDORES;
+-----------+
| MENOR_FEV |
+-----------+
|   1254.30 |
+-----------+

--AVG - (AVERADE) TRAZ O VALOR MÉDIO DE UMA COLUNA
SELECT AVG(FEVEREIRO) AS MED_FEV 
FROM VENDEDORES;
+-------------+
| MED_FEV     |
+-------------+
| 3969.462585 |
+-------------+

--VÁRIAS FUNÇÕES
SELECT 	MAX(JANEIRO) AS MAX_JAN,
		MIN(JANEIRO) AS MIN_JAN,
		AVG(JANEIRO) AS MED_JAN
		FROM VENDEDORES;
+---------+---------+-------------+
| MAX_JAN | MIN_JAN | MED_JAN     |
+---------+---------+-------------+
| 8644.20 | 1156.32 | 4324.637497 |
+---------+---------+-------------+
		
--TRUNCATE - LIMITA OS NÚMEROS DECIMAIS, DE ACORDO COM A QUANTIDADE DESEJADA
SELECT 	MAX(JANEIRO) AS MAX_JAN,
		MIN(JANEIRO) AS MIN_JAN,
		TRUNCATE (AVG (JANEIRO),2) AS MED_JAN
		FROM VENDEDORES;
+---------+---------+---------+
| MAX_JAN | MIN_JAN | MED_JAN |
+---------+---------+---------+
| 8644.20 | 1156.32 | 4324.63 |
+---------+---------+---------+

--tags:
|N0326| PAG:
------------------------------------------------------------------------------

/* AGREDANDO DE AGREGAÇÃO SUM() */
-- A FUNÇÃO SUN(<COLUNA>) SOMA TODOS OS VALORES DE UMA COLUNA E MOSTRA O RESULTADO NO FINAL DELA.
SELECT SUM(JANEIRO) AS TOTAL_JAN
FROM VENDEDORES;
+-----------+
| TOTAL_JAN |
+-----------+
|  34597.10 |
+-----------+

SELECT 	SUM(JANEIRO) AS TOTAL_JAN,
		SUM(FEVEREIRO) AS TOTAL_FEV,
		SUM(MARCO) AS TOTAL_MAR
FROM VENDEDORES;
+-----------+-----------+-----------+
| TOTAL_JAN | TOTAL_FEV | TOTAL_MAR |
+-----------+-----------+-----------+
|  34597.10 |  31755.70 |  41641.44 |
+-----------+-----------+-----------+

--VENDAS POR SEXO
SELECT SEXO, SUM(MARCO) AS TOTAL_MARCO
FROM VENDEDORES GROUP BY SEXO;
+------+-------------+
| SEXO | TOTAL_MARCO |
+------+-------------+
| F    |    12694.30 |
| M    |    28947.14 |
+------+-------------+

--tags: operações com tabela 
|U8469| PAG:
------------------------------------------------------------------------------

/* SUB QUERIES OU INNERQUERIES */

--TABELA DE CONSULTA
+------------+---------+------+---------+-----------+---------+
| IDVENDEDOR | NOME    | SEXO | JANEIRO | FEVEREIRO | MARCO   |
+------------+---------+------+---------+-----------+---------+
|          1 | ADRIANO | M    | 1258.20 |   1254.30 | 5841.25 |
|          2 | VANESSA | F    | 1156.32 |   5115.60 | 5151.55 |
|          3 | CLAUDIO | M    | 1651.51 |   1448.30 | 4251.75 |
|          4 | ANNA    | F    | 4287.12 |   4274.75 | 7542.75 |
|          5 | LUCIO   | M    | 8644.20 |   5687.87 | 7895.54 |
|          6 | PAULO   | M    | 6871.50 |   2014.04 | 4057.87 |
|          7 | AUGUSTO | M    | 7856.01 |   4507.74 | 4780.53 |
|          8 | BRUNA   | M    | 2872.24 |   7453.10 | 2120.20 |
+------------+---------+------+---------+-----------+---------+

--VENDEDOR QUE VENDEU MENOS EM MARÇO E O SEU NOME
SELECT NOME, MIN(MARCO) AS MIN_MARCO
FROM VENDEDORES; --MÉTODO ERRADO
+---------+-----------+
| NOME    | MIN_MARCO |
+---------+-----------+
| ADRIANO |   2120.20 |
+---------+-----------+

--MÉTODO COM SUB QUERIE
--NOME DO VENDEDOR QUE VENDEU MENOS E MARÇO
SELECT NOME, MARCO FROM VENDEDORES 
WHERE MARCO = (SELECT MIN(MARCO) FROM VENDEDORES); --O COMANDO APÓS O SINAL DE IGUAL SERÁ PROCESSADO PRIMEIRO
+-------+---------+
| NOME  | MARCO   |
+-------+---------+
| BRUNA | 2120.20 |
+-------+---------+

--NOME E VALOR QUE VENDEU MAIS EM MARÇO
SELECT NOME, MARCO FROM VENDEDORES 
WHERE MARCO = (SELECT MAX(MARCO) FROM VENDEDORES);
+-------+---------+
| NOME  | MARCO   |
+-------+---------+
| LUCIO | 7895.54 |
+-------+---------+

--QUEM VENDEU MAIS QUE O VALOR MÉDIO EM FEVEREIRO:
SELECT NOME, FEVEREIRO FROM VENDEDORES 
WHERE FEVEREIRO > (SELECT AVG(FEVEREIRO) FROM VENDEDORES);
+---------+-----------+
| NOME    | FEVEREIRO |
+---------+-----------+
| VANESSA |   5115.60 |
| ANNA    |   4274.75 |
| LUCIO   |   5687.87 |
| AUGUSTO |   4507.74 |
| BRUNA   |   7453.10 |
+---------+-----------+

--MÉDIA DE FEVEREIRO:
SELECT 	TRUNCATE (AVG(FEVEREIRO),2) AS FEV
		FROM VENDEDORES;
+---------+
| FEV     |
+---------+
| 3969.46 |
+---------+		

--QUEM VENDEU MENOS QUE A MÉDIA DE FEVEREIRO:
SELECT NOME, FEVEREIRO FROM VENDEDORES 
WHERE FEVEREIRO < (SELECT AVG(FEVEREIRO) FROM VENDEDORES);
+---------+-----------+
| NOME    | FEVEREIRO |
+---------+-----------+
| ADRIANO |   1254.30 |
| CLAUDIO |   1448.30 |
| PAULO   |   2014.04 |
+---------+-----------+

--tags:
|J1236| PAG:
------------------------------------------------------------------------------

/* OPERAÇÕES EM LINHAS */

SELECT * FROM VENDEDORES;
--TABELA DE DEMOSTRAÇÃO
+------------+---------+------+---------+-----------+---------+
| IDVENDEDOR | NOME    | SEXO | JANEIRO | FEVEREIRO | MARCO   |
+------------+---------+------+---------+-----------+---------+
|          1 | ADRIANO | M    | 1258.20 |   1254.30 | 5841.25 |
|          2 | VANESSA | F    | 1156.32 |   5115.60 | 5151.55 |
|          3 | CLAUDIO | M    | 1651.51 |   1448.30 | 4251.75 |
|          4 | ANNA    | F    | 4287.12 |   4274.75 | 7542.75 |
|          5 | LUCIO   | M    | 8644.20 |   5687.87 | 7895.54 |
|          6 | PAULO   | M    | 6871.50 |   2014.04 | 4057.87 |
|          7 | AUGUSTO | M    | 7856.01 |   4507.74 | 4780.53 |
|          8 | BRUNA   | M    | 2872.24 |   7453.10 | 2120.20 |
+------------+---------+------+---------+-----------+---------+

--APLICANDO AS OPERAÇÕES: SOMA E MÉDIA DO TRIMESTRE
SELECT 	NOME,
		JANEIRO,
		FEVEREIRO,
		MARCO,
		(JANEIRO+FEVEREIRO+MARCO) AS "TOTAL",
		TRUNCATE ((JANEIRO+FEVEREIRO+MARCO)/3,2) AS "MÉDIA"
		FROM VENDEDORES;
+---------+---------+-----------+---------+----------+---------+
| NOME    | JANEIRO | FEVEREIRO | MARCO   | TOTAL    | MÉDIA   |
+---------+---------+-----------+---------+----------+---------+
| ADRIANO | 1258.20 |   1254.30 | 5841.25 |  8353.75 | 2784.58 |
| VANESSA | 1156.32 |   5115.60 | 5151.55 | 11423.47 | 3807.82 |
| CLAUDIO | 1651.51 |   1448.30 | 4251.75 |  7351.56 | 2450.52 |
| ANNA    | 4287.12 |   4274.75 | 7542.75 | 16104.62 | 5368.20 |
| LUCIO   | 8644.20 |   5687.87 | 7895.54 | 22227.61 | 7409.20 |
| PAULO   | 6871.50 |   2014.04 | 4057.87 | 12943.41 | 4314.47 |
| AUGUSTO | 7856.01 |   4507.74 | 4780.53 | 17144.28 | 5714.75 |
| BRUNA   | 2872.24 |   7453.10 | 2120.20 | 12445.54 | 4148.51 |
+---------+---------+-----------+---------+----------+---------+		
		
		
-- APLICANDO PORCENTAGEM	
SELECT 	NOME,
		JANEIRO,
		FEVEREIRO,
		MARCO,
		(JANEIRO+FEVEREIRO+MARCO) AS "TOTAL",
		(JANEIRO+FEVEREIRO+MARCO) * 0.25 AS "DESCONTO",
		TRUNCATE((JANEIRO+FEVEREIRO+MARCO)/3,2) AS "MÉDIA"
		FROM VENDEDORES;
+---------+---------+-----------+---------+----------+----------+---------+
| NOME    | JANEIRO | FEVEREIRO | MARCO   | TOTAL    | DESCONTO | MÉDIA   |
+---------+---------+-----------+---------+----------+----------+---------+
| ADRIANO | 1258.20 |   1254.30 | 5841.25 |  8353.75 |  2088.44 | 2784.58 |
| VANESSA | 1156.32 |   5115.60 | 5151.55 | 11423.47 |  2855.87 | 3807.82 |
| CLAUDIO | 1651.51 |   1448.30 | 4251.75 |  7351.56 |  1837.89 | 2450.52 |
| ANNA    | 4287.12 |   4274.75 | 7542.75 | 16104.62 |  4026.16 | 5368.20 |
| LUCIO   | 8644.20 |   5687.87 | 7895.54 | 22227.61 |  5556.90 | 7409.20 |
| PAULO   | 6871.50 |   2014.04 | 4057.87 | 12943.41 |  3235.85 | 4314.47 |
| AUGUSTO | 7856.01 |   4507.74 | 4780.53 | 17144.28 |  4286.07 | 5714.75 |
| BRUNA   | 2872.24 |   7453.10 | 2120.20 | 12445.54 |  3111.39 | 4148.51 |
+---------+---------+-----------+---------+----------+----------+---------+		

--tags:	
|M5489| PAG:
------------------------------------------------------------------------------
	
/* MODIFICANDO ESTRUTURAS DE TABELA */

CREATE TABLE TABELA(
		COLUNA1 VARCHAR(30),
		COLUNA2 VARCHAR(30),
		COLUNA3 VARCHAR(30)
		);

-- ADICIONANDO UMA PRIMARY KEY

ALTER TABLE TABELA 
ADD PRIMARY KEY(COLUNA1);		
-- NESTE CASO, NÃO É POSSIVEL INSERIR AUTO_INCREMENT (INCREMENTAÇÃO AUTOMÁTICA DO ID)
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| COLUNA1 | varchar(30) | NO   | PRI | NULL    |       |
| COLUNA2 | varchar(30) | YES  |     | NULL    |       |
| COLUNA3 | varchar(30) | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
	
-- ADICIONANDO COLOLUNA SEM POSIÇÃO(ULTIMA POSIÇÃO)
ALTER TABLE TABELA
ADD COLUNA VARCHAR(30);
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| COLUNA1 | varchar(30) | NO   | PRI | NULL    |       |
| COLUNA2 | varchar(30) | YES  |     | NULL    |       |
| COLUNA3 | varchar(30) | YES  |     | NULL    |       |
| COLUNA  | varchar(30) | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+

ALTER TABLE TABELA
ADD COLUNA100 INT;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| COLUNA1   | varchar(30) | NO   | PRI | NULL    |       |
| COLUNA2   | varchar(30) | YES  |     | NULL    |       |
| COLUNA3   | varchar(30) | YES  |     | NULL    |       |
| COLUNA    | varchar(30) | YES  |     | NULL    |       |
| COLUNA100 | int(11)     | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+

-- ADICIONANDO COLUNA COM POSICIONAMENTO
ALTER TABLE TABELA
ADD COLUMN COLUNA4 VARCHAR(30) NOT NULL UNIQUE
AFTER COLUNA3;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| COLUNA1   | varchar(30) | NO   | PRI | NULL    |       |
| COLUNA2   | varchar(30) | YES  |     | NULL    |       |
| COLUNA3   | varchar(30) | YES  |     | NULL    |       |
| COLUNA4   | varchar(30) | NO   | UNI | NULL    |       |
| COLUNA    | varchar(30) | YES  |     | NULL    |       |
| COLUNA100 | int(11)     | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+

-- MODIFICANDO O TIPO DE UM CAMPO
ALTER TABLE TABELA MODIFY COLUNA2 DATE NOT NULL; 
-- OBS.: DADOS DEVEM SER COMPATÍVEIS COM O TIPO DE COLUNA QUE FOR ALTERADO
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| COLUNA1   | varchar(30) | NO   | PRI | NULL    |       |
| COLUNA2   | date        | NO   |     | NULL    |       |
| COLUNA3   | varchar(30) | YES  |     | NULL    |       |
| COLUNA4   | varchar(30) | NO   | UNI | NULL    |       |
| COLUNA    | varchar(30) | YES  |     | NULL    |       |
| COLUNA100 | int(11)     | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+

--RENOMEANDO O NOME DA TABELA
ALTER TABLE TABELA
RENAME PESSOA;
--A TABELA AGORA SE CHAMA "PESSOA"

CREATE TABLE TIME(
	IDTIME INT PRIMARY KEY AUTO_INCREMENT,
	TIME VARCHAR(30),
	ID_PESSOA VARCHAR(30)
);
+-----------+-------------+------+-----+---------+----------------+
| Field     | Type        | Null | Key | Default | Extra          |
+-----------+-------------+------+-----+---------+----------------+
| IDTIME    | int(11)     | NO   | PRI | NULL    | auto_increment |
| TIME      | varchar(30) | YES  |     | NULL    |                |
| ID_PESSOA | varchar(30) | YES  |     | NULL    |                |
+-----------+-------------+------+-----+---------+----------------+

--ADICIONANDO UMA FOREIGN KEY
ALTER TABLE TIME
ADD FOREIGN KEY (ID_PESSOA)
REFERENCES PESSOA(COLUNA1);
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| COLUNA1   | varchar(30) | NO   | PRI | NULL    |       |
| COLUNA2   | date        | NO   |     | NULL    |       |
| COLUNA3   | varchar(30) | YES  |     | NULL    |       |
| COLUNA4   | varchar(30) | NO   | UNI | NULL    |       |
| COLUNA    | varchar(30) | YES  |     | NULL    |       |
| COLUNA100 | int(11)     | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+

-- VERIFICAR AS CHAVES
SHOW CREATE TABLE TIME;

| TIME  | CREATE TABLE `time` (
  `IDTIME` int(11) NOT NULL AUTO_INCREMENT,
  `TIME` varchar(30) DEFAULT NULL,
  `ID_PESSOA` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`IDTIME`),
  KEY `ID_PESSOA` (`ID_PESSOA`),
  CONSTRAINT `time_ibfk_1` FOREIGN KEY (`ID_PESSOA`) REFERENCES `pessoa` (`COLUNA1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 |

--tags:
|I5146| PAG:
------------------------------------------------------------------------------

/* ORGANIZANDO AS CHAVES - CONSTRAINT (REGRA)*/

--CHAVE PRIMÁRIA TRATA QUALQUER REGISTRO COMO ÚNICO, MESMO SE APARENTEMENTE FOREM IGUAIS.
--EXEMPLO:
-- (1) AAAA
-- (2) EEEE
-- (3) AAAA
-- OU SEJA, O 1 É DIFERENTE DO 3

-- DICA: PESQUISAR SOBRE INTEGRIDADE REFERENCIAL


CREATE TABLE JOGADOR (
		IDJOGADOR INT PRIMARY KEY AUTO_INCREMENT,
		NOME VARCHAR (30)
);

CREATE TABLE TIME(
	IDTIME INT PRIMARY KEY AUTO_INCREMENT,
	NOMETIME VARCHAR(30),
	ID_JOGADOR INT,
	FOREIGN KEY(ID_JOGADOR)
	REFERENCES JOGADOR(IDJOGADOR)
	);
	
INSERT INTO JOGADOR VALUES(NULL,'GUERREIRO');
INSERT INTO TIME VALUES(NULL,'FLAMENGO',1);

SHOW CREATE TABLE JOGADOR;
SHOW CREATE TABLE TIME;

| JOGADOR | CREATE TABLE `jogador` (
  `IDJOGADOR` int(11) NOT NULL AUTO_INCREMENT,
  `NOME` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`IDJOGADOR`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 |


 /*CONSTRAINT `time_ibfk_1` FOREIGN KEY (`ID_JOGADOR`) REFERENCES `jogador` (`IDJOGADOR`)*/
 -- A CONSTANTE time_ibfk_1 VEIO NOMEADA AUTOMATICAMENTE PELO BANCO
 
 --VISTO ISSO, DEVE-SE CRIAR PRIMEIRAMENTE A TABELA E, EM SEGUIDA, CRIAR AS CHAVES E CONSTRAINTS, POR FORA DA TABELA.
 --O MOTIVO DISSO É O NOME. DESSA FORMA, SERÁ POSSÍVEL ATRIBUIR NOMES ÀS CONSTRAINTS.

 --tags:
 O6513| PAG:
------------------------------------------------------------------------------

DROP TABLE ENDERECO;
DROP TABLE CLIENTE;
DROP TABLE CLIENTE;
 
------------------------------------------------------------------------------
 
 /*ORGANIZANDO CHAVES E AÇÕES DE CONSTRAINTS*/
--AS TABELAS, EM SUA MAIORIA, SÃO DEPENDENTES UMAS DAS OUTRAS. COM ISSO, DEVE-SE CRIAR AS CONSTRAINTS DEPOIS QUE A TABELA FOR CRIADA. ASSIM, O SCRIPT FICARÁ ORGANIZADO DA SEGUINTE FORMA
/*
EXEMPLO DE SCRIPT ORGANIZADO: 

CREATE TABLE ...
CREATE TABLE ...
CREATE TABLE ...

ALTER TABLE...  É AQUI QUE ENTRA AS CONSTRAINTS
ALTER TABLE...	É AQUI QUE ENTRA AS CONSTRAINTS
ALTER TABLE...	É AQUI QUE ENTRA AS CONSTRAINTS

*/

CREATE TABLE CLIENTE(
	IDCLIENTE INT,
	NOME VARCHAR(30) NOT NULL
);

CREATE TABLE TELEFONE(
	IDTELEFONE INT,
	TIPO CHAR(3) NOT NULL,
	NUMERO VARCHAR(10) NOT NULL,
	ID_CLIENTE INT
);

ALTER TABLE CLIENTE ADD CONSTRAINT PK_CLIENTE 
PRIMARY KEY(IDCLIENTE); --ADICIONANDO UMA PRIMARY KEY COM O NOME DE PK_CLIENTE NA TABELA CLIENTE NO CAMPO IDCLIENTE

--ESTRUTURA
--ALTER TABLE <NOME DA TABLEA> ADD CONSTRAINT 
ALTER TABLE TELEFONE ADD CONSTRAINT FK_CLIENTE_TELEFONE --CONSTRAINS QUE SE INSTALA NA TABELA TELEFONE, COM O NOME KF_CLIENTE_TELEFONE, QUE SIGNIFICA LIGAR A TABELA CLIENTE A TELEFONE 
FOREIGN KEY(ID_CLIENTE) REFERENCES CLIENTE(IDCLIENTE); --É UMA CHAVE ENTRANGEIRA COM O NOME ID_CLIENTE, QUE SE INSTALA NA IDCLIENTE E SE REFERE À TABELA CLIENTE, AO CAMPO IDCLIENTE


SHOW CREATE TABLE TELEFONE;

 TELEFONE | CREATE TABLE `telefone` (
  `IDTELEFONE` int(11) DEFAULT NULL,
  `TIPO` char(3) NOT NULL,
  `NUMERO` varchar(10) NOT NULL,
  `ID_CLIENTE` int(11) DEFAULT NULL,
  KEY `FK_CLIENTE_TELEFONE` (`ID_CLIENTE`),
  CONSTRAINT `FK_CLIENTE_TELEFONE` FOREIGN KEY (`ID_CLIENTE`) REFERENCES `cliente` (`IDCLIENTE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 |
--AGORA, A CONSTRAINT POSSUI NOME FK_CLIENTE_TELEFONE

--tags: criando constraints | criar contraints | adicionar contraints | padrão de constraints
K5423| PAG:
------------------------------------------------------------------------------

/* DICIONÁRIO DE DADOS*/
--OS DICIONÁRIOS DE DADOS GUARDAM O 'META DADOS', QUE SÃO OS DADOS DOS DADOS, OU SEJA, DADOS ORGANIZADORES.

--COMO ABRIR O DICIONÁRIO DE DADOS
SHOW DATABASES;

+--------------------+
| Database           |
+--------------------+
| information_schema |<--DICIONÁRIO
| biblioteca         |
| comercio           |
| exemplo            |
| mysql              |<--DICIONÁRIO
| performance_schema |<--DICIONÁRIO
| projeto            |
| sakila             |
| sys                |
| world              |
+--------------------+

--COMO PROCURAR CONSTRAINTS NO DICIONÁRIO
USE INFORMATION_SCHEMA;

SHOW TABLES;

+---------------------------------------+
| Tables_in_information_schema          |
+---------------------------------------+
| CHARACTER_SETS                        |
| COLLATIONS                            |
| COLLATION_CHARACTER_SET_APPLICABILITY |
| COLUMNS                               |
| COLUMN_PRIVILEGES                     |
| ENGINES                               |
| EVENTS                                |
| FILES                                 |
| GLOBAL_STATUS                         |
| GLOBAL_VARIABLES                      |
| KEY_COLUMN_USAGE                      |
| OPTIMIZER_TRACE                       |
| PARAMETERS                            |
| PARTITIONS                            |
| PLUGINS                               |
| PROCESSLIST                           |
| PROFILING                             |
| REFERENTIAL_CONSTRAINTS               |
| ROUTINES                              |
| SCHEMATA                              |
| SCHEMA_PRIVILEGES                     |
| SESSION_STATUS                        |
| SESSION_VARIABLES                     |
| STATISTICS                            |
| TABLES                                |
| TABLESPACES                           |
| TABLE_CONSTRAINTS                     |<-- ESTÁ LOCALIZADO AQUI
| TABLE_PRIVILEGES                      |
| TRIGGERS                              |
| USER_PRIVILEGES                       |
| VIEWS                                 |
| INNODB_LOCKS                          |
| INNODB_TRX                            |
| INNODB_SYS_DATAFILES                  |
| INNODB_FT_CONFIG                      |
| INNODB_SYS_VIRTUAL                    |
| INNODB_CMP                            |
| INNODB_FT_BEING_DELETED               |
| INNODB_CMP_RESET                      |
| INNODB_CMP_PER_INDEX                  |
| INNODB_CMPMEM_RESET                   |
| INNODB_FT_DELETED                     |
| INNODB_BUFFER_PAGE_LRU                |
| INNODB_LOCK_WAITS                     |
| INNODB_TEMP_TABLE_INFO                |
| INNODB_SYS_INDEXES                    |
| INNODB_SYS_TABLES                     |
| INNODB_SYS_FIELDS                     |
| INNODB_CMP_PER_INDEX_RESET            |
| INNODB_BUFFER_PAGE                    |
| INNODB_FT_DEFAULT_STOPWORD            |
| INNODB_FT_INDEX_TABLE                 |
| INNODB_FT_INDEX_CACHE                 |
| INNODB_SYS_TABLESPACES                |
| INNODB_METRICS                        |
| INNODB_SYS_FOREIGN_COLS               |
| INNODB_CMPMEM                         |
| INNODB_BUFFER_POOL_STATS              |
| INNODB_SYS_COLUMNS                    |
| INNODB_SYS_FOREIGN                    |
| INNODB_SYS_TABLESTATS                 |
+---------------------------------------+

DESC TABLE_CONSTRAINTS;
+--------------------+--------------+------+-----+---------+-------+
| Field              | Type         | Null | Key | Default | Extra |
+--------------------+--------------+------+-----+---------+-------+
| CONSTRAINT_CATALOG | varchar(512) | NO   |     |         |       |
| CONSTRAINT_SCHEMA  | varchar(64)  | NO   |     |         |       |
| CONSTRAINT_NAME    | varchar(64)  | NO   |     |         |       | <--
| TABLE_SCHEMA       | varchar(64)  | NO   |     |         |       |
| TABLE_NAME         | varchar(64)  | NO   |     |         |       | <--
| CONSTRAINT_TYPE    | varchar(64)  | NO   |     |         |       | <--
+--------------------+--------------+------+-----+---------+-------+

SELECT CONSTRAINT_SCHEMA AS "BANCO",
		TABLE_NAME AS "TABELA",
		CONSTRAINT_TYPE AS "TIPI"
		FROM TABLE_CONSTRAINTS;
		
+------------+---------------------------+-------------+
| BANCO      | TABELA                    | TIPI        |
+------------+---------------------------+-------------+
| biblioteca | cliente                   | UNIQUE      |
| biblioteca | livros                    | UNIQUE      |
| comercio   | cliente                   | PRIMARY KEY |
| comercio   | cursos                    | PRIMARY KEY |
| comercio   | jogador                   | PRIMARY KEY |
| comercio   | pessoa                    | PRIMARY KEY |
| comercio   | pessoa                    | UNIQUE      |
| comercio   | telefone                  | FOREIGN KEY |
| comercio   | time                      | PRIMARY KEY |
| comercio   | time                      | FOREIGN KEY |
| comercio   | vendedores                | PRIMARY KEY |
| mysql      | columns_priv              | PRIMARY KEY |
| mysql      | db                        | PRIMARY KEY |
| mysql      | engine_cost               | PRIMARY KEY |
| mysql      | event                     | PRIMARY KEY |
| mysql      | func                      | PRIMARY KEY |
| mysql      | gtid_executed             | PRIMARY KEY |
| mysql      | help_category             | PRIMARY KEY |
| mysql      | help_category             | UNIQUE      |
| mysql      | help_keyword              | PRIMARY KEY |
| mysql      | help_keyword              | UNIQUE      |
| mysql      | help_relation             | PRIMARY KEY |
| mysql      | help_topic                | PRIMARY KEY |
| mysql      | help_topic                | UNIQUE      |
| mysql      | innodb_index_stats        | PRIMARY KEY |
| mysql      | innodb_table_stats        | PRIMARY KEY |
| mysql      | ndb_binlog_index          | PRIMARY KEY |
| mysql      | plugin                    | PRIMARY KEY |
| mysql      | proc                      | PRIMARY KEY |
| mysql      | procs_priv                | PRIMARY KEY |
| mysql      | proxies_priv              | PRIMARY KEY |
| mysql      | server_cost               | PRIMARY KEY |
| mysql      | servers                   | PRIMARY KEY |
| mysql      | slave_master_info         | PRIMARY KEY |
| mysql      | slave_relay_log_info      | PRIMARY KEY |
| mysql      | slave_worker_info         | PRIMARY KEY |
| mysql      | tables_priv               | PRIMARY KEY |
| mysql      | time_zone                 | PRIMARY KEY |
| mysql      | time_zone_leap_second     | PRIMARY KEY |
| mysql      | time_zone_name            | PRIMARY KEY |
| mysql      | time_zone_transition      | PRIMARY KEY |
| mysql      | time_zone_transition_type | PRIMARY KEY |
| mysql      | user                      | PRIMARY KEY |
| sakila     | actor                     | PRIMARY KEY |
| sakila     | address                   | PRIMARY KEY |
| sakila     | address                   | FOREIGN KEY |
| sakila     | category                  | PRIMARY KEY |
| sakila     | city                      | PRIMARY KEY |
| sakila     | city                      | FOREIGN KEY |
| sakila     | country                   | PRIMARY KEY |
| sakila     | customer                  | PRIMARY KEY |
| sakila     | customer                  | FOREIGN KEY |
| sakila     | customer                  | FOREIGN KEY |
| sakila     | film                      | PRIMARY KEY |
| sakila     | film                      | FOREIGN KEY |
| sakila     | film                      | FOREIGN KEY |
| sakila     | film_actor                | PRIMARY KEY |
| sakila     | film_actor                | FOREIGN KEY |
| sakila     | film_actor                | FOREIGN KEY |
| sakila     | film_category             | PRIMARY KEY |
| sakila     | film_category             | FOREIGN KEY |
| sakila     | film_category             | FOREIGN KEY |
| sakila     | film_text                 | PRIMARY KEY |
| sakila     | inventory                 | PRIMARY KEY |
| sakila     | inventory                 | FOREIGN KEY |
| sakila     | inventory                 | FOREIGN KEY |
| sakila     | language                  | PRIMARY KEY |
| sakila     | payment                   | PRIMARY KEY |
| sakila     | payment                   | FOREIGN KEY |
| sakila     | payment                   | FOREIGN KEY |
| sakila     | payment                   | FOREIGN KEY |
| sakila     | rental                    | PRIMARY KEY |
| sakila     | rental                    | UNIQUE      |
| sakila     | rental                    | FOREIGN KEY |
| sakila     | rental                    | FOREIGN KEY |
| sakila     | rental                    | FOREIGN KEY |
| sakila     | staff                     | PRIMARY KEY |
| sakila     | staff                     | FOREIGN KEY |
| sakila     | staff                     | FOREIGN KEY |
| sakila     | store                     | PRIMARY KEY |
| sakila     | store                     | UNIQUE      |
| sakila     | store                     | FOREIGN KEY |
| sakila     | store                     | FOREIGN KEY |
| sys        | sys_config                | PRIMARY KEY |
| world      | city                      | PRIMARY KEY |
| world      | city                      | FOREIGN KEY |
| world      | country                   | PRIMARY KEY |
| world      | countrylanguage           | PRIMARY KEY |
| world      | countrylanguage           | FOREIGN KEY |
+------------+---------------------------+-------------+
--ESSAS SÃO AS CONSTRAINTS DO BANCO INTEIRO. PARA SABER APENAS AS DO BANCO EM USO DEVE-SE FILTAR:

--NOVAMENTE...
SELECT CONSTRAINT_SCHEMA AS "BANCO",
		TABLE_NAME AS "TABELA", --NECESSÁRIO SABER O NOME
		CONSTRAINT_NAME AS "NOME DA REGRA",
		CONSTRAINT_TYPE AS "TIPI"
		FROM TABLE_CONSTRAINTS
		WHERE CONSTRAINT_SCHEMA = 'COMERCIO';


+----------+------------+---------------------+-------------+
| BANCO    | TABELA     | NOME DA REGRA       | TIPI        |
+----------+------------+---------------------+-------------+
| comercio | cliente    | PRIMARY             | PRIMARY KEY |
| comercio | cursos     | PRIMARY             | PRIMARY KEY |
| comercio | jogador    | PRIMARY             | PRIMARY KEY |
| comercio | pessoa     | PRIMARY             | PRIMARY KEY |
| comercio | pessoa     | COLUNA4             | UNIQUE      |
| comercio | telefone   | FK_CLIENTE_TELEFONE | FOREIGN KEY | <-- NOME ATRIBUIDO ANTERIOMENTE
| comercio | time       | PRIMARY             | PRIMARY KEY |
| comercio | time       | time_ibfk_1         | FOREIGN KEY | <-- NOME PADRÃO
| comercio | vendedores | PRIMARY             | PRIMARY KEY |
+----------+------------+---------------------+-------------+

--tags: filtrando constraints | acessando o dicionário de dados
|L2135| PAG:
------------------------------------------------------------------------------

/* APAGANDO CONSTRAINTS */
--NECESSÁRIO ENTRAR NO BANCO DA CONSTRAINTS QUE DESEJA APAGAR

USE COMERCIO;

ALTER TABLE TELEFONE
DROP FOREIGN KEY FK_CLIENTE_TELEFONE;


/* INSERÇÃO EM ASSA*/
--DESABILITA-SE A FOREIGN KEY PARA AUMENTAR A PERFOMANCE EM CASOS DE INSERÇÃO EM MASSA

--tags: excluíndo constraints
|O2156| PAG:
------------------------------------------------------------------------------

/* REVISÃO DE CARDINALIDADE E FOREIGN KEY*/

-- QUEM DEFINE A CARDINALIDADE É A REGRA DO NEGÓCIO

-- PARA FACILITAR, É NECESSÁRIO COLOCAR AS TABELAS LADO A LADO E FAZER A LIGAÇÃO DE ID's
-- CONTE O NÚMERO DE ELEMENTOS QUE TEMOS COM RELAÇÃO A TABELA OPOSTA
-- EXEMPLO: TABELA CLIENTE LIGADA À ENDEREÇO, QUANDO SE POSSUI APENAS UM TELEFONE

-- SE 1 ID DE UMA TABELA LIGA APENAS 1 ID DA OUTRA TABLEA (APENAS UMA LINA ENTRE ELAS) ESSE RELACIONAMENTO É DE 1X1
-- RELACIONAMENTOS 1X1: A CHAVE ENTRANGEIRA FICA NA TABLEA MAIS FRACA
-- EXEMPLO: TABELA CLIENTE LIGADA À ENDEREÇO, QUANDO SE POSSUI MAIS DE UM TELEFONE

-- SE 1 ID DE UMA TABLE LIGA MAIS DE 1 ID NA OUTRA TABLEA, ESSE RELACIONAMENTO É 1XN.
-- RELACIONAMENTOS 1XN: A CHAVE ESTRANGEIRA SEMPRE FICARÁ NA TABELA DE CARDINALIDADE N

-- SE MAIS DE 1 ID DE UMA TABELA LIGA MAIS DE UMA ID DA OUTRA TABLEA, ESSE RELACIONAMENTO É NXN.
-- RELACIONAMENTOS NXN: NECESSITA DO AUXILIDO DE UMA TABELA ASSOCIATIVA. REPRESENTAM SUBSTANTIVOS.
-- EXEMPLO: PACIENTES SENDO ATENDIDO POR MÉDIOS E MÉDICOS ATENDENDO MAIS DE UM CLIENTE.
-- NECESSÁRIO O AUXÍLIO DE UMA TABELA ASSOCIATIVA
-- RELACIONAMENTOS NXN, GERALMENTE, SÃO NOMEADOS COMO SUBSTANTIVO. EX.: CONSULTA, MULTA, ETC...

--tags:
|X5049| PAG:
------------------------------------------------------------------------------

/* EXERCÍCIO DA OFICINA DO SR. JOSÉ. */

1. CLIENTE UM BANCO DE DADOS CHAMADO PROJETO E CONECTE-SE AO BANCO.
2. FAÇA A SEGUINTE MODELAGEM:

SR. JOSÉ QUER MODERNIZXAR A SUA OFICINA E, POR ENQUANTO, CADASTRAR /*OS CARROS (1)*/ QUE ENTRAM PARA REALIZAR OS SERVIÇOS E OS SEUS /*RESPECTIVOS DONOS (2)*/. SR JOSÉ MENCIONOU QUE CADA CLIENTE POSSUI APENAS /*UM*/ CARRO. UM CARRO POSSUI /*UMA*/ MARCA SR. JOSÉ TAMBÉM QUER SABER AS CORES DE CADA CARRO PARA TER IDEIA DE QUAL TINTA COMPRAR, E INFORMAR QUE UM CARRO PODE  TER /*MAIS DE UMA COR.(3)*/ SR.JOSÉ NECESSITA ARMAZENAR OS /*(4)TELEFONES DOS CLIENTES*/, MAS NÃO QUER QUE ELES SEJAM OBRIGATÓRIOS.

-- RESOLUÇÃO

--SERÃO NECESSÁRIAS 4 TABELAS

CREATE DATABASE OFICINA;

USE OFICINA;

CREATE TABLE CLIENTE(
	IDCLIENTE INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR (30) NOT NULL,
	SEXO ENUM('M','F') NOT NULL,
	ID_CARRO INT UNIQUE --ÚNICO PORQUÊ A TABELA CLIENTE VAI SE RELACIONAR COM CARRO (CONFORME A RN, CADA CLIENTE SO POSSUI UM CARRO)
	);
	
CREATE TABLE TELEFONE(
	IDTELEFONE INT PRIMARY KEY AUTO_INCREMENT,
	TIPO ENUM('CEL','RES','COM') NOT NULL,
	NUMERO VARCHAR(30) NOT NULL,
	ID_CLIENTE INT
	);

CREATE TABLE MARCA(
	IDMARCA INT PRIMARY KEY AUTO_INCREMENT,
	MARCA VARCHAR(30) NOT NULL,
	PLACA VARCHAR(30) NOT NULL UNIQUE 
	);

CREATE TABLE CARRO(
	IDCARRO INT PRIMARY KEY AUTO_INCREMENT,
	MODELO VARCHAR(30) NOT NULL,
	PLACA VARCHAR(30) NOT NULL UNIQUE,
	ID_MARCA INT 
	);

--ALTERANDO NOME DE UMA COLUNA	
ALTER TABLE CARRO
CHANGE PLACA CHASSI VARCHAR(30) NOT NULL;	
--------------------------------

CREATE TABLE COR(
	IDCOR INT PRIMARY KEY AUTO_INCREMENT,
	COR VARCHAR(30) UNIQUE
	);
	
--TABELA ASSOCIATVA
CREATE TABLE CARRO_COR(
	ID_CARRO INT,
	ID_COR INT,
	PRIMARY KEY(ID_CARRO, ID_COR)
	);
	
--CRIANDO AS CONSTRAINTS (REGRAS DE CHAVES)

ALTER TABLE TELEFONE
ADD CONSTRAINT FK_TELEFONE_CLIENTE --FOREIGN KEY_NOME-DA-TABELA_TABELA-DE-LIGAÇÃO
FOREIGN KEY(ID_CLIENTE)
REFERENCES CLIENTE(IDCLIENTE);

ALTER TABLE CLIENTE
ADD CONSTRAINT FK_CLIENTE_CARRO
FOREIGN KEY(ID_CARRO)
REFERENCES CARRO(IDCARRO);

ALTER TABLE CARRO
ADD CONSTRAINT FK_CARRO_MARCA
FOREIGN KEY(ID_MARCA)
REFERENCES MARCA(IDMARCA);

ALTER TABLE CARRO_COR
ADD CONSTRAINT FK_COR
FOREIGN KEY(ID_COR)
REFERENCES COR(IDCOR);

--INSERINDO REGRISTROS

INSERT INTO MARCA VALUES (1, 'VOLKSWAGEN','KFG-2487');
INSERT INTO MARCA VALUES (2, 'FIAT','AFF-2019');
INSERT INTO MARCA VALUES (3, 'FIAT','MBA-1025');
INSERT INTO MARCA VALUES (4, 'VOLKSWAGEN','YUQ-3589');
INSERT INTO MARCA VALUES (5, 'FIAT','AWE-1353');
INSERT INTO MARCA VALUES (6, 'GENERAL MOTORS','FDC-9635');
INSERT INTO MARCA VALUES (7, 'VOLKSWAGEN','TNC-0342');
INSERT INTO MARCA VALUES (8, 'HYUNDAI','HJM-3512');
INSERT INTO MARCA VALUES (9, 'GENERAL MOTORS','PQP-1234');
INSERT INTO MARCA VALUES (10, 'FORD','PUM-4365');

INSERT INTO CARRO VALUES (NULL, 'GOL', '12587459687458785', '1');
INSERT INTO CARRO VALUES (NULL, 'UNO', '01254789652301458', '2');
INSERT INTO CARRO VALUES (NULL, 'PALIO', '02214589632001447', '3');
INSERT INTO CARRO VALUES (NULL, 'FOX', '00012539382410236', '4');
INSERT INTO CARRO VALUES (NULL, 'SIENA', '66632590144478501', '5');
INSERT INTO CARRO VALUES (NULL, 'CELTA', '90412305078952301', '6');
INSERT INTO CARRO VALUES (NULL, 'VOYAGE', '032659874512032587', '7');
INSERT INTO CARRO VALUES (NULL, 'HB20', '70809040506010203', '8');
INSERT INTO CARRO VALUES (NULL, 'ONIX', '987654321032145678', '9');
INSERT INTO CARRO VALUES (NULL, 'FIESTA', '51553595758545652', '10');

INSERT INTO COR VALUES (NULL,'VERMELHO');
INSERT INTO COR VALUES (NULL,'PRETO');
INSERT INTO COR VALUES (NULL,'CINZA');
INSERT INTO COR VALUES (NULL,'VINHO');
INSERT INTO COR VALUES (NULL,'LARANJA');
INSERT INTO COR VALUES (NULL,'AZUL');
INSERT INTO COR VALUES (NULL,'MARROM');
INSERT INTO COR VALUES (NULL,'BRANCO');
INSERT INTO COR VALUES (NULL,'AMARELO');
INSERT INTO COR VALUES (NULL,'ROXO');

INSERT INTO CARRO_COR VALUES (21,26);
INSERT INTO CARRO_COR VALUES (22,23);
INSERT INTO CARRO_COR VALUES (23,25);
INSERT INTO CARRO_COR VALUES (24,20);
INSERT INTO CARRO_COR VALUES (25,22);
INSERT INTO CARRO_COR VALUES (26,24);
INSERT INTO CARRO_COR VALUES (27,19);
INSERT INTO CARRO_COR VALUES (28,27);
INSERT INTO CARRO_COR VALUES (29,18);
INSERT INTO CARRO_COR VALUES (30,21);

INSERT INTO CLIENTE VALUES (NULL, 'ANA', 'F', 21);
INSERT INTO CLIENTE VALUES (NULL, 'CLÁUDIA', 'F', 22);
INSERT INTO CLIENTE VALUES (NULL, 'BRUNO', 'M', 23);
INSERT INTO CLIENTE VALUES (NULL, 'PEDRO', 'M', 24);
INSERT INTO CLIENTE VALUES (NULL, 'MARIA', 'F', 25);
INSERT INTO CLIENTE VALUES (NULL, 'ROSA', 'F', 26);
INSERT INTO CLIENTE VALUES (NULL, 'FILIPE', 'M', 27);
INSERT INTO CLIENTE VALUES (NULL, 'ANDRÉ', 'M', 28);
INSERT INTO CLIENTE VALUES (NULL, 'JOSÉ', 'M', 29);
INSERT INTO CLIENTE VALUES (NULL, 'CARLA', 'F', 30);

INSERT INTO TELEFONE VALUES (NULL, 'CEL','81985744125',1);
INSERT INTO TELEFONE VALUES (NULL, 'CEL','81996587425',2);
INSERT INTO TELEFONE VALUES (NULL, 'CEL','81956320147',3);
INSERT INTO TELEFONE VALUES (NULL, 'CEL','81965874120',4);
INSERT INTO TELEFONE VALUES (NULL, 'CEL','81999850174',4);
INSERT INTO TELEFONE VALUES (NULL, 'CEL','81996325478',5);
INSERT INTO TELEFONE VALUES (NULL, 'CEL','81901485236',6);
INSERT INTO TELEFONE VALUES (NULL, 'CEL','81932102458',6);
INSERT INTO TELEFONE VALUES (NULL, 'CEL','81974895623',7);
INSERT INTO TELEFONE VALUES (NULL, 'CEL','81930205184',8);

SELECT * FROM CARRO;
SELECT * FROM CARRO_COR;
SELECT * FROM COR;
SELECT * FROM MARCA;
SELECT * FROM CLIENTE;
SELECT * FROM TELEFONE;

--tags:
P8463| PAG:
------------------------------------------------------------------------------

/* TRIGGERS */

-- ESTRUTA DE UMA TRIGGER
DELIMITER $
CREATE TRIGGER <NOME>
BEFORE/AFTER INSERT/DELETE/UPDATE ON <TABLEA>
FOR EACH ROW --PARA CADA LINHA
BEGIN
	<COMANDO SQL>
END
$
DELIMITER;

--ACESSANDO AS TRIGGERS NO DICIONÁRIO DE DADOS
SHOW DATABASES;
USE INFORMATION_SCHEMA;
DESC TRIGGERS;

+----------------------------+---------------+------+-----+---------+-------+
| Field                      | Type          | Null | Key | Default | Extra |
+----------------------------+---------------+------+-----+---------+-------+
| TRIGGER_CATALOG            | varchar(512)  | NO   |     |         |       |
| TRIGGER_SCHEMA             | varchar(64)   | NO   |     |         |       |
| TRIGGER_NAME               | varchar(64)   | NO   |     |         |       |
| EVENT_MANIPULATION         | varchar(6)    | NO   |     |         |       |
| EVENT_OBJECT_CATALOG       | varchar(512)  | NO   |     |         |       |
| EVENT_OBJECT_SCHEMA        | varchar(64)   | NO   |     |         |       |
| EVENT_OBJECT_TABLE         | varchar(64)   | NO   |     |         |       |
| ACTION_ORDER               | bigint(4)     | NO   |     | 0       |       |
| ACTION_CONDITION           | longtext      | YES  |     | NULL    |       |
| ACTION_STATEMENT           | longtext      | NO   |     | NULL    |       |
| ACTION_ORIENTATION         | varchar(9)    | NO   |     |         |       |
| ACTION_TIMING              | varchar(6)    | NO   |     |         |       |
| ACTION_REFERENCE_OLD_TABLE | varchar(64)   | YES  |     | NULL    |       |
| ACTION_REFERENCE_NEW_TABLE | varchar(64)   | YES  |     | NULL    |       |
| ACTION_REFERENCE_OLD_ROW   | varchar(3)    | NO   |     |         |       |
| ACTION_REFERENCE_NEW_ROW   | varchar(3)    | NO   |     |         |       |
| CREATED                    | datetime(2)   | YES  |     | NULL    |       |
| SQL_MODE                   | varchar(8192) | NO   |     |         |       |
| DEFINER                    | varchar(93)   | NO   |     |         |       |
| CHARACTER_SET_CLIENT       | varchar(32)   | NO   |     |         |       |
| COLLATION_CONNECTION       | varchar(32)   | NO   |     |         |       |
| DATABASE_COLLATION         | varchar(32)   | NO   |     |         |       |
+----------------------------+---------------+------+-----+---------+-------+

--tags: criando triggers | adicionando triggers
|Q1235| PAG:
------------------------------------------------------------------------------

/* CONCEITO DE ANTES DE DEPOIS DAS DRIGGERS */

--PARA CADA COMANDO - INSERT, DELETE, UPDATE - TEMOS AS FASES 'ANTES' E 'DEPOIS' DOS DADOS

--VALORES NEW: VALORES QUE VÃO ENTRAR NA TABELA PELA PRIMEIRA VEZ
--VALORES OLD: VALORES QUE ESTAVAM NA TABELA E FORAM DELETADOS
--UPDATE: VALOR NEW ENTRA E VALOR OLD SAI

--NESSE CASO, PARA FAZER O BACKUP DOS DADOS, DEVE-SE PEGAR OS VALORES OLD 		

--tags:		
|W9874| PAG:
------------------------------------------------------------------------------
	
/* CRIANDO BACKUP COM AS TRIGGERS*/

--CRIANDO TRIGGER DE BACKUP NO MESMO BANCO (BACKUP LÓGICO)

CREATE DATABASE AULA40;

USE AULA40;

CREATE TABLE USUARIO(
		IDUSUARIO INT PRIMARY KEY AUTO_INCREMENT,
		NOME VARCHAR(30),
		LOGIN VARCHAR(30),
		SENHA VARCHAR(100)
);

CREATE TABLE BKPUSUARIO(
	IDBACKUP INT PRIMARY KEY AUTO_INCREMENT,
	IDUSUARIO INT,
	NOME VARCHAR (30),
	LOGIN VARCHAR(30)
); 
--NÃO SE FAZ BACKUP DE SENHAS. CASO ALGUM USUÁRIO PERCA SEU LOGIN, DEVE-SE ALTERAR A SENHA AO RECUPERAR
--DICA: AS SENHAS SEMPRE DEVEM SER SALVAS CRIPTOGRAFADAS

DELIMITER $
CREATE TRIGGER BACKUP_USER
BEFORE DELETE ON USUARIO
FOR EACH ROW
	BEGIN
		INSERT INTO BKPUSUARIO VALUES
		(NULL,OLD.IDUSUARIO,OLD.NOME,OLD.LOGIN); 
	END 
$
DELIMITER ;
--O OLD EXPECIFICA QUE IRÁ GUARDAR OS VALORES ANTIGOS

INSERT INTO USUARIO VALUES(NULL, 'AUGUSTO','GUSTA10','CHERONOPE2030');
INSERT INTO USUARIO VALUES(NULL, 'MARIO','MARIO21','BROSS0254');
+-----------+---------+---------+---------------+
| IDUSUARIO | NOME    | LOGIN   | SENHA         |
+-----------+---------+---------+---------------+
|         1 | AUGUSTO | GUSTA10 | CHERONOPE2030 |
|         2 | MARIO   | MARIO21 | BROSS0254     |
+-----------+---------+---------+---------------+

--TESTANDO A TRIGGER
DELETE FROM USUARIO
WHERE IDUSUARIO = 1;

--MOSTRANTO AS TRIGGERS
SHOW TRIGGERS;

--DELETANDO UMA TRIGGER
DROP TRIGGER <NOME DA TRIGGER>;
--NECESSÁRIO ESTAR LOGADO NO BANCO EM QUE A TRIGGER FOI CRIADA/EXECULTADA


--tags: backup com triggers | backup no mesmo banco | revomendo uma trigger | excluindo triggers | remover trigger 
|M4560| PAG:
------------------------------------------------------------------------------

/* COMUNICAÇÃO ENTRE BANCOS */
--CRIANDO UMA TRIGGER DE BACKUP EM OUTRO BANCO AO INSERIR REGRISTROS

--CRIANDO O PRIMEIRO BANCO
CREATE DATABASE LOJA;
USE LOJA;

CREATE TABLE PRODUTO(
	IDPRODUTO INT PRIMARY KEY AUTO_INCREMENT,
	PRODUTO VARCHAR(30),
	VALOR FLOAT(10,2)
);

--CRIANDO O SEGUNDO BANCO
CREATE DATABASE BACKUP;
USE BACKUP;

CREATE TABLE BKP_PRODUTO(
	IDBKP INT PRIMARY KEY AUTO_INCREMENT,
	IDPRODUTO INT,
	PRODUTO VARCHAR(30),
	VALOR FLOAT(10,2)
);

--VOLTANDO PARA O PRIMEIRO BANCO
USE LOJA;

--TESTANDO A COMUNICAÇÃO ENTRE OS DOIS BANCOS
INSERT INTO BACKUP.BKP_PRODUTO VALUES(NULL, 1000,'TESTE',0.0);
--O BACKUP.BKP_PRODUTO REPRESENTA AS DUAS TABLEAS DOS DOIS BANCOS, ANTES E DEPOIS DO PONTO, RESPECTIVAMENTE

SELECT * FROM BACKUP.BKP_PRODUTO;
+-------+-----------+---------+-------+
| IDBKP | IDPRODUTO | PRODUTO | VALOR |
+-------+-----------+---------+-------+
|     1 |      1000 | TESTE   |  0.00 |
+-------+-----------+---------+-------+

--PROGRAMANDO A TRIGGER
DELIMITER $
CREATE TRIGGER BACKUP_PRODUTO
BEFORE INSERT ON PRODUTO
FOR EACH ROW
BEGIN
	INSERT INTO BACKUP.BKP_PRODUTO VALUES
	(NULL, NEW.IDPRODUTO,NEW.PRODUTO,NEW.VALOR);
	
	
END
$
DELIMITER ;

--TESTANDO A TRIGGER
INSERT INTO PRODUTO VALUES (NULL,'LIVRO - AS CRONICAS DE GELO E FOGO',59.90);
INSERT INTO PRODUTO VALUES (NULL,'LIVRO - IT',65.90);
INSERT INTO PRODUTO VALUES (NULL,'LIVRO - GUERRA E PAZ',79.90);
INSERT INTO PRODUTO VALUES (NULL,'LIVRO - CRIME E CASTIGO',59.90);

SELECT * FROM PRODUTO;
+-----------+-------------------------+-------+
| IDPRODUTO | PRODUTO                 | VALOR |
+-----------+-------------------------+-------+
|         1 | LIVRO - IT              | 65.90 |
|         2 | LIVRO - GUERRA E PAZ    | 79.90 |
|         3 | LIVRO - CRIME E CASTIGO | 59.90 |
+-----------+-------------------------+-------+

SELECT * FROM BACKUP.BKP_PRODUTO;
+-------+-----------+-------------------------+-------+
| IDBKP | IDPRODUTO | PRODUTO                 | VALOR |
+-------+-----------+-------------------------+-------+
|     1 |      1000 | TESTE                   |  0.00 |
|     2 |         0 | LIVRO - IT              | 65.90 |
|     3 |         0 | LIVRO - GUERRA E PAZ    | 79.90 |
|     4 |         0 | LIVRO - CRIME E CASTIGO | 59.90 |
+-------+-----------+-------------------------+-------+

--TRIGGER DE BACKUP FUNCIONANDO EM DOIS BANCOS PERFEITAMENTE!
--EM SUMA, SE PERDER UM BANCO, TEREMOS OUTRO


--CRIANDO UMA TRIGGER DE BACKUP EM OUTRO BANCO AO DELETAR REGRISTROS
DELIMITER $
CREATE TRIGGER BACKUP_PRODUTO_DELETE
BEFORE DELETE ON PRODUTO
FOR EACH ROW
BEGIN
	INSERT INTO BACKUP.BKP_PRODUTO VALUES
	(NULL, OLD.IDPRODUTO,OLD.PRODUTO,OLD.VALOR);
	
	
END
$
DELIMITER ;

--TESTANDO
DELETE FROM PRODUTO
WHERE IDPRODUTO = 2;

SELECT * FROM BACKUP.BKP_PRODUTO;
+-------+-----------+-------------------------+-------+
| IDBKP | IDPRODUTO | PRODUTO                 | VALOR |
+-------+-----------+-------------------------+-------+
|     1 |      1000 | TESTE                   |  0.00 |						  	
|     2 |         0 | LIVRO - IT              | 65.90 |
|     3 |         0 | LIVRO - GUERRA E PAZ    | 79.90 |<-- ID PRODUTO ESTÁ 0
|     4 |         0 | LIVRO - CRIME E CASTIGO | 59.90 |
|     5 |         2 | LIVRO - GUERRA E PAZ    | 79.90 |<-- ID PRODUTO ESTÁ 2
+-------+-----------+-------------------------+-------+
--OS IDS FORAM SALVOS COM '0' PORQUÊ FORAM INSERIDOS NESSA TABELA ANTES DE SEREM INSERIDOS NA TABELA ORIGINAL, IMPOSSIBLITANDO A CRIAÇÃO DE SEU ID

--FAZENDO A CORREÇÃO
DROP TRIGGER BACKUP_PRODUTO;

--CRIANDO NOVAMENTE, DA FORMA CORRETA
DELIMITER $
CREATE TRIGGER BACKUP_PRODUTO
AFTER INSERT ON PRODUTO
FOR EACH ROW
BEGIN
	INSERT INTO BACKUP.BKP_PRODUTO VALUES
	(NULL, NEW.IDPRODUTO,NEW.PRODUTO,NEW.VALOR);
	
	
END
$
DELIMITER ;
-- PARA CORRIGR BASTA INSERIR UM AFTER. ASSIM, O BACKUP DE INSERÇÃO SERÁ FEITO APÓS O REGISTRO SER INSERIDO NA TABELA ORIGINAL E, POR CONSEGUINTE, GERADO O ID DO PRODUTO.

INSERT INTO PRODUTO VALUES (NULL,'LIVRO - A HORA DA ESTRELA',19.90);

--TESTANDO

SELECT * FROM PRODUTO;
+-----------+---------------------------+-------+
| IDPRODUTO | PRODUTO                   | VALOR |
+-----------+---------------------------+-------+
|         1 | LIVRO - IT                | 65.90 |
|         3 | LIVRO - CRIME E CASTIGO   | 59.90 |
|         4 | LIVRO - A HORA DA ESTRELA | 19.90 | <--
+-----------+---------------------------+-------+

SELECT * FROM BACKUP.BKP_PRODUTO;
+-------+-----------+---------------------------+-------+
| IDBKP | IDPRODUTO | PRODUTO                   | VALOR |
+-------+-----------+---------------------------+-------+
|     1 |      1000 | TESTE                     |  0.00 |
|     2 |         0 | LIVRO - IT                | 65.90 |
|     3 |         0 | LIVRO - GUERRA E PAZ      | 79.90 |
|     4 |         0 | LIVRO - CRIME E CASTIGO   | 59.90 |
|     5 |         2 | LIVRO - GUERRA E PAZ      | 79.90 |
|     6 |         4 | LIVRO - A HORA DA ESTRELA | 19.90 | <-- ID CORRETO!
+-------+-----------+---------------------------+-------+
--COM ISSO, É NECESSÁRIO SABER USAR BEM O AFTER/BEFORE


--COMPLETANTO AS TRIGGERS COM AS INFORMAÇÕES ALTERADAS
ALTER TABLE BACKUP.BKP_PRODUTO
ADD EVENTO CHAR(1);


--AVISANDO À TABLEA DE BACKUP QUANDO O REGISTRO FOI SALVO QUANDO DELETADO
DROP TRIGGER BACKUP_PRODUTO_DELETE;

DELIMITER $
CREATE TRIGGER BACKUP_PRODUTO_DELETE
BEFORE DELETE ON PRODUTO
FOR EACH ROW
BEGIN
	INSERT INTO BACKUP.BKP_PRODUTO VALUES
	(NULL, OLD.IDPRODUTO,OLD.PRODUTO,OLD.VALOR,'D');
	
	
END
$
DELIMITER ;
--O 'D' INSERIDO VAI INDICAR QUE O REGRISTRO FOI DELETADO, DISTINGUINDO DOS INSERIDOS.

--TESTANDO
DELETE FROM PRODUTO WHERE IDPRODUTO = 1;

SELECT * FROM PRODUTO;
+-----------+---------------------------+-------+
| IDPRODUTO | PRODUTO                   | VALOR |
+-----------+---------------------------+-------+
|         3 | LIVRO - CRIME E CASTIGO   | 59.90 |
|         4 | LIVRO - A HORA DA ESTRELA | 19.90 |
+-----------+---------------------------+-------+
--NÃO ESTÁ MAIS NA TABELA OFICIAL

SELECT * FROM BACKUP.BKP_PRODUTO;
+-------+-----------+---------------------------+-------+--------+
| IDBKP | IDPRODUTO | PRODUTO                   | VALOR | EVENTO |
+-------+-----------+---------------------------+-------+--------+
|     1 |      1000 | TESTE                     |  0.00 | NULL   |
|     2 |         0 | LIVRO - IT                | 65.90 | NULL   |
|     3 |         0 | LIVRO - GUERRA E PAZ      | 79.90 | NULL   |
|     4 |         0 | LIVRO - CRIME E CASTIGO   | 59.90 | NULL   |
|     5 |         2 | LIVRO - GUERRA E PAZ      | 79.90 | NULL   |
|     6 |         4 | LIVRO - A HORA DA ESTRELA | 19.90 | NULL   |
|     7 |         1 | LIVRO - IT                | 65.90 | D      | <-- 
+-------+-----------+---------------------------+-------+--------+
--O LIVRO DELETADO APRESENTA O INDICADOR "D" NA COLUNA DE EVENTO

--AVISANDO À TABLEA DE BACKUP QUANDO O REGISTRO FOI SALVO QUANDO INSERIDO
DROP TRIGGER BACKUP_PRODUTO;

DELIMITER $
CREATE TRIGGER BACKUP_PRODUTO
AFTER INSERT ON PRODUTO
FOR EACH ROW
BEGIN
	INSERT INTO BACKUP.BKP_PRODUTO VALUES
	(NULL, NEW.IDPRODUTO,NEW.PRODUTO,NEW.VALOR,'I');
	
	
END
$
DELIMITER ;

--TESTANDO...
INSERT INTO PRODUTO VALUES (NULL, 'LIVRO - OS MISERÁVEIS',49.90);
SELECT * FROM PRODUTO;
+-----------+---------------------------+-------+
| IDPRODUTO | PRODUTO                   | VALOR |
+-----------+---------------------------+-------+
|         3 | LIVRO - CRIME E CASTIGO   | 59.90 |
|         4 | LIVRO - A HORA DA ESTRELA | 19.90 |
|         5 | LIVRO - OS MISERÁVEIS     | 49.90 | <-- LIVRO ADICIONADO
+-----------+---------------------------+-------+

SELECT * FROM BACKUP.BKP_PRODUTO;
+-------+-----------+---------------------------+-------+--------+
| IDBKP | IDPRODUTO | PRODUTO                   | VALOR | EVENTO |
+-------+-----------+---------------------------+-------+--------+
|     1 |      1000 | TESTE                     |  0.00 | NULL   |
|     2 |         0 | LIVRO - IT                | 65.90 | NULL   |
|     3 |         0 | LIVRO - GUERRA E PAZ      | 79.90 | NULL   |
|     4 |         0 | LIVRO - CRIME E CASTIGO   | 59.90 | NULL   |
|     5 |         2 | LIVRO - GUERRA E PAZ      | 79.90 | NULL   |
|     6 |         4 | LIVRO - A HORA DA ESTRELA | 19.90 | NULL   |
|     7 |         1 | LIVRO - IT                | 65.90 | D      |
|     8 |         5 | LIVRO - OS MISERÁVEIS     | 49.90 | I      |<-- 
+-------+-----------+---------------------------+-------+--------+
-- O LIVRO INSERIDO APRESENTA O INDICADOR 'I' NA TABELA DE EVENTO

--tags: muitas
|E6548| PAG:
------------------------------------------------------------------------------

/*TRIGGER DE AUDITORIA*/
--ESTA TIRGGER  A MAIS COMPLETA. ELA TERÁ O COMANDO UPDATE E DIRÁ QUANDO UM PRODUTO FOI DELETADO, ALTERADO E GRAVAR O VALOR DA ALTERAÇÃO NO PREÇO DO PRODUTO.

--VAMOS CRIAR NOVAMENTE O BACNO LOJA
DROP DATABASE LOJA;
DROP DATABASE BACKUP;

CREATE DATABASE LOJA;
USE LOJA;

CREATE TABLE PRODUTO(
	IDPRODUTO INT PRIMARY KEY AUTO_INCREMENT,
	PRODUTO VARCHAR(30),
	VALOR FLOAT(10,2)
);

INSERT INTO PRODUTO VALUES (NULL,'LIVRO - O ILUMINADO',59.90);
INSERT INTO PRODUTO VALUES (NULL,'LIVRO - IT',65.90);
INSERT INTO PRODUTO VALUES (NULL,'LIVRO - GUERRA E PAZ',79.90);
INSERT INTO PRODUTO VALUES (NULL,'LIVRO - CRIME E CASTIGO',59.90);

--CRIANDO A TRIGGER PARA INFORMAR A DATA E A HORA QUE O PRODUTO FOI DELETADO, E QUEM O DELETOU (USUÁRIO)

--COMANDO DE DATA E HORA (QUANDO)
SELECT NOW();
+---------------------+
| NOW()               |
+---------------------+
| 2019-07-20 21:56:45 |
+---------------------+

--COMANDO PARA SABER O USUÁRIO (QUEM)
SELECT CURRENT_USER;
+----------------+
| CURRENT_USER   |
+----------------+
| root@localhost |
+----------------+

CREATE DATABASE BACKUP;
USE BACKUP;

CREATE TABLE BKP_PRODUTO(
	IDBACKUP INT PRIMARY KEY AUTO_INCREMENT,
	IDPRODUTO INT,
	PRODUTO VARCHAR(30),
	VALOR_ORIGINAL FLOAT(10,2),
	VALOR_ALTERADO FLOAT(10,2),
	DATA DATETIME, 
	USUARIO VARCHAR(30),
	EVENTO CHAR (1)
);

--VOLTANDO AO BANCO LOJA
USE LOJA;
SELECT * FROM PRODUTO;
+-----------+-------------------------+-------+
| IDPRODUTO | PRODUTO                 | VALOR |
+-----------+-------------------------+-------+
|         1 | LIVRO - IT              | 65.90 |
|         2 | LIVRO - GUERRA E PAZ    | 79.90 |
|         3 | LIVRO - CRIME E CASTIGO | 59.90 |
|         4 | LIVRO - O ILUMINADO     | 59.90 |
+-----------+-------------------------+-------+

--OBJETIVO: AO ALTERAR ALGUM PRODUTO, SALVAR NO BACKUP O VALOR ORIGNAL, O ALTERADO, QUANDO FOI ALTERADO E QUEM ALTEROU.

DELIMITER $
CREATE TRIGGER AUDIT_PROD
AFTER UPDATE ON PRODUTO
FOR EACH ROW
BEGIN
	INSERT INTO BACKUP.BKP_PRODUTO VALUES
	(NULL, OLD.IDPRODUTO, OLD.PRODUTO, OLD.VALOR, NEW.VALOR, NOW(),CURRENT_USER(),'U'); --O 'U' REPRESENTA UPDATE
END
$
DELIMITER ;

--TESTANDO
UPDATE PRODUTO SET VALOR = 69.90
WHERE IDPRODUTO = 3; -- LIVRO - CRIME E CASTIGO

SELECT * FROM PRODUTO;
+-----------+-------------------------+-------+
| IDPRODUTO | PRODUTO                 | VALOR |
+-----------+-------------------------+-------+
|         1 | LIVRO - IT              | 65.90 |
|         2 | LIVRO - GUERRA E PAZ    | 79.90 |
|         3 | LIVRO - CRIME E CASTIGO | 69.90 | <-- PREÇO, CONFERE
|         4 | LIVRO - O ILUMINADO     | 59.90 |
+-----------+-------------------------+-------+

SELECT * FROM BACKUP.BKP_PRODUTO;
+----------+-----------+-------------------------+----------------+
| IDBACKUP | IDPRODUTO | PRODUTO                 | VALOR_ORIGINAL |
+----------+-----------+-------------------------+----------------+
|        1 |         3 | LIVRO - CRIME E CASTIGO |          59.90 |
+----------+-----------+-------------------------+----------------+
+----------------+---------------------+----------------+--------+
| VALOR_ALTERADO | DATA                | USUARIO        | EVENTO |
+----------------+---------------------+----------------+--------+
|          69.90 | 2019-07-20 22:14:59 | root@localhost | U      |
+----------------+---------------------+----------------+--------+

--tags: trigger de data e hora | descobrindo o usuário do banco |
|R5120| PAG:
------------------------------------------------------------------------------

/* AUTO RELACIONAMENTOS */

[INSERIR MODELO LÓGICO]

CREATE TABLE CURSOS(
	IDCURSO INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(30),
	HORAS INT,
	VALOR FLOAT (10,2),
	ID_PREREQ INT
	);
	
ALTER TABLE CURSOS
ADD CONSTRAINT FK_PREREQ
FOREIGN KEY(ID_PREREQ)
REFERENCES CURSOS(IDCURSO);

INSERT INTO CURSOS VALUES (NULL,'BD RELACIONAL',20,400.00,NULL); 
INSERT INTO CURSOS VALUES (NULL,'BUSINESS INTELLIGENTE',40,800.00,1); 
INSERT INTO CURSOS VALUES (NULL,'RELATORIOS AVANÇADOS',20,600.00,2); 
INSERT INTO CURSOS VALUES (NULL,'LÓGICA DE PROGRAMAÇÃO',20,400.00,NULL); 
INSERT INTO CURSOS VALUES (NULL,'RUBY',30,500.00,4); 

-- TABELA DE CURSOS (CONFORME O ID DO CURSO INSERIDO ACIMA):
-- CURSO 1: BD RELACIONAL			- PRÉ REQUISITO (CONFORME ID): NULL
-- CURSO 2: BUSINESS INTELLIGENTE	- PRÉ REQUISITO (CONFORME ID): 1
-- CURSO 3: RELATORIOS AVANÇADOS	- PRÉ REQUISITO (CONFORME ID): 2
-- CURSO 4: LÓGICA DE PROGRAMAÇÃO	- PRÉ REQUISITO (CONFORME ID): NULL
-- CURSO 5: RUBY					- PRÉ REQUISITO (CONFORME ID): 4

-- EXEMPLO: PARA CURSAR RUBY(5) É NECESSÁRIO CURSAR LÓGICA DE PROGRAMAÇÃO(4). ESTE NÃO TEM PRÉ REQUISITO.

+---------+--------------------------+-------+--------+-----------+
| IDCURSO | NOME                     | HORAS | VALOR  | ID_PREREQ |
+---------+--------------------------+-------+--------+-----------+
|       1 | BD RELACIONAL            |    20 | 400.00 |      NULL |
|       2 | BUSINESS INTELLIGENTE    |    40 | 800.00 |         1 |
|       3 | RELATORIOS AVANÇADOS     |    20 | 600.00 |         2 |
|       4 | LÓGICA DE PROGRAMAÇÃO    |    20 | 400.00 |      NULL |
|       5 | RUBY                     |    30 | 500.00 |         4 |
+---------+--------------------------+-------+--------+-----------+

SELECT NOME, VALOR, HORAS, IFNULL(ID_PREREQ,'SEM REQUISITO') REQUISITO
FROM CURSOS;
+--------------------------+--------+-------+---------------+
| NOME                     | VALOR  | HORAS | REQUISITO     |
+--------------------------+--------+-------+---------------+
| BD RELACIONAL            | 400.00 |    20 | SEM REQUISITO |
| BUSINESS INTELLIGENTE    | 800.00 |    40 | 1             |
| RELATORIOS AVANÇADOS     | 600.00 |    20 | 2             |
| LÓGICA DE PROGRAMAÇÃO    | 400.00 |    20 | SEM REQUISITO |
| RUBY                     | 500.00 |    30 | 4             |
+--------------------------+--------+-------+---------------+

--tags:
|T1236| PAG:
------------------------------------------------------------------------------

/*EXERCÍCIO 02*/
--MONTAR UMA QUERY QUE TRAGA O NOME DO CURSO, VALOR, HORAS E O NOME DO PRÉ REQUISITO DO CURSO AO INVÉS DE O ID

--USANDO INNER JOIN
SELECT 
	C.NOME AS 'CURSO', 
	C.VALOR AS 'VALOR', 
	C.HORAS AS 'CARGA HORÁRIA', 
	IFNULL(P.NOME, '---') AS 'PRÉ-REQUISITO'
FROM CURSOS C
INNER JOIN CURSOS P
ON P.IDCURSO = C.ID_PREREQ;
+-----------------------+--------+----------------+--------------------------+
| CURSO                 | VALOR  | CARGA HORÁRIA  | PRÉ-REQUISITO            |
+-----------------------+--------+----------------+--------------------------+
| BUSINESS INTELLIGENTE | 800.00 |             40 | BD RELACIONAL            |
| RELATORIOS AVANÇADOS  | 600.00 |             20 | BUSINESS INTELLIGENTE    |
| RUBY                  | 500.00 |             30 | LÓGICA DE PROGRAMAÇÃO    |
+-----------------------+--------+----------------+--------------------------+


--LEFT JOIN (PARA TRAZER TODOS OS CURSOS)
SELECT 
	C.NOME AS 'CURSO', 
	C.VALOR AS 'VALOR', 
	C.HORAS AS 'CARGA HORÁRIA', 
	IFNULL(P.NOME, '---') AS 'PRÉ-REQUISITO'
FROM CURSOS C
LEFT JOIN CURSOS P
ON P.IDCURSO = C.ID_PREREQ;
+--------------------------+--------+----------------+
| CURSO                    | VALOR  | CARGA HORÁRIA  |
+--------------------------+--------+----------------+
| BD RELACIONAL            | 400.00 |             20 |
| BUSINESS INTELLIGENTE    | 800.00 |             40 |
| RELATORIOS AVANÇADOS     | 600.00 |             20 | 
| LÓGICA DE PROGRAMAÇÃO    | 400.00 |             20 |
| RUBY                     | 500.00 |             30 | 
+--------------------------+--------+----------------+
+--------------------------+
| PRÉ-REQUISITO            |
+--------------------------+
| ---                      |
| BD RELACIONAL            |
| BUSINESS INTELLIGENTE    |
| ---                      |
| LÓGICA DE PROGRAMAÇÃO    |
+--------------------------+

--tags:
|Y1549| PAG:
------------------------------------------------------------------------------

/* CURSORES */
--CURSORES SÃO VARIÁVEIS OU VETORES

CREATE DATABASE CURSORES;
USE CURSORES;

CREATE TABLE VENDEDORES(
	IDVENDEDOR INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(50),
	JAN INT,
	FEV INT,
	MAR INT
);

INSERT INTO VENDEDORES VALUES (NULL,'JUNIOR',9282,23412,32442);
INSERT INTO VENDEDORES VALUES (NULL,'ANA',8541,14785,475432);
INSERT INTO VENDEDORES VALUES (NULL,'JOSÉ',4178,5741,8746);
INSERT INTO VENDEDORES VALUES (NULL,'LÍDIA',9652,0214,8564);
INSERT INTO VENDEDORES VALUES (NULL,'ADRIANA',4586,3214,5694);
INSERT INTO VENDEDORES VALUES (NULL,'MARIA',4255,,4220,2504);
INSERT INTO VENDEDORES VALUES (NULL,'MILENA',8874,8965,2547);
INSERT INTO VENDEDORES VALUES (NULL,'PAULA',8578,5636,1258);
INSERT INTO VENDEDORES VALUES (NULL,'NATALIA',9632,2587,4785);
INSERT INTO VENDEDORES VALUES (NULL,'THIAGO',5412,2012,2301);

+------------+---------+------+-------+--------+
| IDVENDEDOR | NOME    | JAN  | FEV   | MAR    |
+------------+---------+------+-------+--------+
|          1 | JUNIOR  | 9282 | 23412 |  32442 |
|          2 | ANA     | 8541 | 14785 | 475432 |
|          3 | JOSÉ    | 4178 |  5741 |   8746 |
|          4 | LÍDIA   | 9652 |   214 |   8564 |
|          5 | ADRIANA | 4586 |  3214 |   5694 |
|          6 | MILENA  | 8874 |  8965 |   2547 |
|          7 | PAULA   | 8578 |  5636 |   1258 |
|          8 | NATALIA | 9632 |  2587 |   4785 |
|          9 | THIAGO  | 5412 |  2012 |   2301 |
+------------+---------+------+-------+--------+

SELECT NOME, (JAN+FEV+MAR) AS 'TOTAL' FROM VENDEDORES;
+---------+--------+
| NOME    | TOTAL  |
+---------+--------+
| JUNIOR  |  65136 |
| ANA     | 498758 |
| JOSÉ    |  18665 |
| LÍDIA   |  18430 |
| ADRIANA |  13494 |
| MILENA  |  20386 |
| PAULA   |  15472 |
| NATALIA |  17004 |
| THIAGO  |   9725 |
+---------+--------+

SELECT NOME, (JAN+FEV+MAR)/3 AS 'MÉDIA' FROM VENDEDORES;
+---------+-------------+
| NOME    | MÉDIA       |
+---------+-------------+
| JUNIOR  |  21712.0000 |
| ANA     | 166252.6667 |
| JOSÉ    |   6221.6667 |
| LÍDIA   |   6143.3333 |
| ADRIANA |   4498.0000 |
| MILENA  |   6795.3333 |
| PAULA   |   5157.3333 |
| NATALIA |   5668.0000 |
| THIAGO  |   3241.6667 |
+---------+-------------+
--SUPONDO QUE O BANCO É IMENSO E DEMANDA PROCESSAMENTO
--UMA ALTERNATIVA PARA RESOLVER ESSE PROBLEMA É USAR CURSORES, TRAZENDO TODOS ESSES CÁLCULOS PARA UMA NOVA TABELA


CREATE TABLE VEND_TOTAL(
	NOME VARCHAR(50),
	JAN INT,
	FEV INT,
	MAR INT,
	TOTAL INT,
	MEDIA INT
);

--CRIANDO CURSORES E DECLARANDO VARIÁVEIS NAS PROCEDURES
DELIMITER $
CREATE PROCEDURE INSEREDADOS()
	BEGIN
	--DECLARAÇÃO DE VARIÁVEIS:
		DECLARE FIM INT DEFAULT 0; -- VARIÁVEL FIM DO TIPO INTEIRO QUE INICIA COM VALOR 0
		DECLARE VAR1, VAR2, VAR3, VTOTAL, VMEDIA INT; --VARIÁVEIS DO TIPO INTERIO
		DECLARE VNOME VARCHAR(50);  --VARIÁVEL DO TIPO VARCHAR
		
		DECLARE REG CURSOR FOR( 
			SELECT NOME, JAN, FEV, MAR FROM VENDEDORES
		); --VARIÁVEL REG DO TIPO CURSOR QUE AUTOMATICAMENTE VAI RECEBER OS VALORES DE NOME, JAN, FEV E MAR
		-- EXEMPLO: [ (NOME, JAN, FEV, MAR), (NOME, JAN, FEV, MAR),(NOME, JAN, FEV, MAR), ...]
		
		DECLARE CONTINUE HANDLER FOR NOT FOUND SET FIM = 1; --HANDLER É UMA VARIÁVEL DE MANIPUAÇÃO CONTÍNUA
		--ELA É REPONSÁVEL POR OBSERVAR O VETOR E, QUANDO ELE NÃO TEM MAIS ELEMENTOS, ELA PÕE O FIM IGUAL A 1 ( FOR NOT FOUND SET FIM = 1). QUANDO A VARIÁVEL FOR IGUAL A 1, O LOOP QUE MOVE OS REGRISTROS IRÁ PARAR. ESSE COMANDO É PADRÃO, OU SEJA, SEMPRE SERÁ ESCRITO DESSA FORMA.
		
		OPEN REG; --O OPEN PEGA TODOS OS DADOS GRAVADOS NO BANCO (NO HD) E TRANSFERE PARA A MEMÓRIA RAM.
		
		REPEAT --ESTRUTURA DE REPETIÇÃO
		
		FETCH REG INTO VNOME, VAR1, VAR2, VAR3; --SIGNIFICA 'TRAGA-ME O PRÓXIMO'. EM OUTRAS PALAVRAS, ELE É RESPONSÁVEL POR TRAZER O PRIMEIRO REGISTRO DO VETOR E TRANSFERE PARA O CÓDIGO, E ASSIM SUCESSIVAMENTE COM OS DEMAIS VETORES (2,3,4) GERANDO O LOOP.
		
			IF NOT FIM THEN -- SIGNIFICA 'SE NÃO FOR VERDADEIRO, FAÇA OS COMANDOS A SEGUIR:'
				SET VTOTAL = VAR1 + VAR2 + VAR3; --SET ATRIBUI VALORES
				SET VMEDIA = VTOTAL/3; --MÉDIA. OBS.: O VTOTAL JÁ ESTA COM A SOMA, COMO FEITO NA LINHA ANTERIOR
			
				INSERT INTO VEND_TOTAL VALUES (VNOME,VAR1,VAR2,VAR3,VTOTAL,VMEDIA);
			END IF; --FECHANDO O COMANDO IF QUE, INCLUSIVE, ESTÁ DENTRO DO REPEAT
		UNTIL FIM END REPEAT; --FECHANDO O COMANDO REPEAT
		CLOSE REG; --LIMPANDO A MEMÓRIA RAM, QUE ESTAVA ABERTA(NO OPEN) COM OS DADOS TRADIZOS DO BANCO (HD) 
	END
$
DELIMITER ;

							
==============================================================================
							CÓDIGO SEM ANOTAÇÕES	

DELIMITER $
CREATE PROCEDURE INSEREDADOS()
	BEGIN
		DECLARE FIM INT DEFAULT 0;
		DECLARE VAR1, VAR2, VAR3, VTOTAL, VMEDIA INT;
		DECLARE VNOME VARCHAR(50);
		
		DECLARE REG CURSOR FOR(
			SELECT NOME, JAN, FEV, MAR FROM VENDEDORES
			);
			
		DECLARE CONTINUE HANDLER FOR NOT FOUND SET FIM = 1; 
		
		OPEN REG; 
		
		REPEAT 
		
		FETCH REG INTO VNOME, VAR1, VAR2, VAR3; 
			IF NOT FIM THEN 
				SET VTOTAL = VAR1 + VAR2 + VAR3; 
				SET VMEDIA = VTOTAL / 3; 
			
				INSERT INTO VEND_TOTAL VALUES (VNOME,VAR1,VAR2,VAR3,VTOTAL,VMEDIA);
			END IF; 
		UNTIL FIM END REPEAT; 
		CLOSE REG;
	END
$
DELIMITER ;

==============================================================================

SELECT * FROM VENDEDORES;
+------------+---------+------+-------+--------+
| IDVENDEDOR | NOME    | JAN  | FEV   | MAR    |
+------------+---------+------+-------+--------+
|          1 | JUNIOR  | 9282 | 23412 |  32442 |
|          2 | ANA     | 8541 | 14785 | 475432 |
|          3 | JOSÉ    | 4178 |  5741 |   8746 |
|          4 | LÍDIA   | 9652 |   214 |   8564 |
|          5 | ADRIANA | 4586 |  3214 |   5694 |
|          6 | MILENA  | 8874 |  8965 |   2547 |
|          7 | PAULA   | 8578 |  5636 |   1258 |
|          8 | NATALIA | 9632 |  2587 |   4785 |
|          9 | THIAGO  | 5412 |  2012 |   2301 |
+------------+---------+------+-------+--------+

SELECT * FROM VEND_TOTAL;
Empty set (0.00 sec) --VAZIA, POIS É NECESSÁRO RODAR O CURSOR

--RODANDO O CURSOR
CALL INSEREDADOS();
SELECT * FROM VEND_TOTAL;
+---------+------+-------+--------+--------+--------+
| NOME    | JAN  | FEV   | MAR    | TOTAL  | MEDIA  |
+---------+------+-------+--------+--------+--------+
| JUNIOR  | 9282 | 23412 |  32442 |  65136 |  21712 |
| ANA     | 8541 | 14785 | 475432 | 498758 | 166253 |
| JOSÉ    | 4178 |  5741 |   8746 |  18665 |   6222 |
| LÍDIA   | 9652 |   214 |   8564 |  18430 |   6143 |
| ADRIANA | 4586 |  3214 |   5694 |  13494 |   4498 |
| MILENA  | 8874 |  8965 |   2547 |  20386 |   6795 |
| PAULA   | 8578 |  5636 |   1258 |  15472 |   5157 |
| NATALIA | 9632 |  2587 |   4785 |  17004 |   5668 |
| THIAGO  | 5412 |  2012 |   2301 |   9725 |   3242 |
+---------+------+-------+--------+--------+--------+
--RESUMO: OS CURSORES SÃO UMA PROGRAMAÇÃO. A PROGRAMAÇÃO FEITA ACIMA TEVE O OBJETIVO DE TRANSFERIR OS DADOS JÁ CALCULADOS PARA UMA NOVA TABELA (VEND_TOTAL), COM A FINALIDADE DE REDUZIR AS OPERAÇÕES ARITMÉTRICAS NA PRÓPRIA BUSCA E, POR CONSEGUINTE, NÃO REDUZIR A PERFOMANCE DO BANCO.

--tags:
|U8496| PAG:
------------------------------------------------------------------------------
/* FORMAS NORMAIS */

-- PRIMEIRA FORMA NORMAL
ATOMICIDADE: UM CAMPO NÃO PODE SER DIVISÍVEL 
UM CAMPO NÃO PODE SER VETORIZADO 
NECESSÁRIO TER A FOREGIN KEY (CHAVE PRIMÁRIA) 


-- SEGUNDA FORMA NORMAL 

DEPENDÊNCIA DIRETA
EM UMA TABELA ASSOSCIATIVA (TABELA, GERALMENTE, COMPOSTA POR IDs QUE FAZEM A LIGAÇÃO DE TUDAS OU MAIS TABELAS), OS CAMPOS QUE NÃO FAZEM PARTE DO ID DEVEM DEPENDER EXCLUSIVAMENTE DELES. TOTALIDADE
EXEMPLO: EM UMA TABELA ID_PACIENTE, ID_MEDICO, ID_HOSTPIAL, O CAMPO DIAGNÓSTICO DEVE DEPENDER DA UNIÃO DOS TRES CAMPOS DE ID, VISTO QUE SEM PACIENTE NÃO HÁ DIAGNOSTICO, SEM MÉDICO NÃO HÁ CONSULTA E SEM HOSTPITAL NÃO HÁ PACIENTE. EM SUMA, O DIAGNÓSTICO DEPENDE DA UNIÃO DAS TRÊS COLUNAS. 


-- TERCEIRA FORMA NORMAL

DEPENDÊNCIA TRANSITIVA
EM UMA TABELA ASSOCIATIVA, OS CAMPOS NÃO-CHAVES QUE DEPENDEM DE OUTROS CAMPOS NÃO-CHAVES, VIRAM OUTRA TABELA. DESSA FORMA, ELES DEVEM SAIR DESSA TABELA.
XEMPLO: EM UMA TABELA CUJAS COLUNAS SÃO ID_PACIENTE, ID_MÉDICO, ID_HOSPITAL, ITERNAÇÃO, A INTERNAÇÃO NÃO DEPENDE DA TOTALIDADE DA CHAVE (COMO O CAMPO DIAGNÓSTICO, CITADO ANTERIOMENTE) POIS, NEM TODOS OS CASOS DE DOENÇA/DIAGNÓSTICO REQUEREM INTERNAÇÃO


--tags: normalizando | normatizaçoes | formas normais | revisão | todas as formas normais
F2684| PAG:
------------------------------------------------------------------------------

/* USANDO AS TRÊS FORMAS NORMAIS NA PRÁTICA */

CREATE DATABASE CONSULTORIO;
USE CONSULTORIO;

CREATE TABLE PACIENTE(
	IDPACIENTE INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(30),
	SEXO CHAR(1),
	EMAIL VARCHAR(30),
	NASCIMENTO DATE
);

CREATE TABLE MEDICO(
	IDMEDICO INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(30),
	SEXO CHAR(1),
	ESPECIALIDADE VARCHAR(30),
	FUNCIONARIO ENUM('S','N')
);

CREATE TABLE HOSPITAL(
	IDHOSPITAL INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(30),
	BAIRRO VARCHAR(30),
	CIDADE VARCHAR(30),
	ESTADO CHAR(2)
);

CREATE TABLE CONSULTA(
	IDCONSULTA INT PRIMARY KEY AUTO_INCREMENT,
	ID_PACIENTE INT,
	ID_MEDICO INT,
	ID_HOSPITAL INT,
	DATA DATETIME,
	DIAGNOSTICO VARCHAR(50)
);
	
 CREATE TABLE INTERNACAO(
	IDINTERNACAO INT PRIMARY KEY AUTO_INCREMENT,
	ENTRADA DATETIME,
	QUARTO INT,
	SAIDA DATETIME,
	OBSERVACOES VARCHAR(50),
	ID_CONSULTA INT UNIQUE --UMA CONSULTA SÓ GERA UMA INTERNAÇÃO. NA PROXIMA CONSULTA O ID SERÁ OUTRO
);


ALTER TABLE CONSULTA 
ADD CONSTRAINT FK_CONSULTA_PACIENTE
FOREIGN KEY (ID_PACIENTE) 
REFERENCES PACIENTE(IDPACIENTE);

ALTER TABLE CONSULTA 
ADD CONSTRAINT FK_CONSULTA_MEDICO
FOREIGN KEY (ID_MEDICO) 
REFERENCES MEDICO(IDMEDICO);

ALTER TABLE CONSULTA
ADD CONSTRAINT FK_CONSULTA_HOSPITAL
FOREIGN KEY (ID_HOSPITAL) 
REFERENCES HOSPITAL(IDHOSPITAL); 

ALTER TABLE INTERNACAO 
ADD CONSTRAINT FK_INTERNACAO_CONSULTA
FOREIGN KEY (ID_CONSULTA) 
REFERENCES CONSULTA(IDCONSULTA);

--tags:
|D5215| PAG:
------------------------------------------------------------------------------

/*INFORMAÇÕES ALÉM DO CURSO*/


--REGISTROS REPEDITOS OU DUPLICADOS |F5156|
--APAGANDO REGISTRO REPETIDO |H3210|
+----------+------------------------------------+
| IDLIVROS | TITULO                             |
+----------+------------------------------------+
|        5 | LOLITA                             |
|        6 | FOGO PÁLIDO                        |
|        7 | DOM CASMURRO                       |
|        8 | CRIME E CASTIGO                    |
|       10 | IT                                 |
|       11 | JOYLAND                            |
|       12 | O CEMITÉRIO                        |
|       13 | SOB A REDOMA                       |
|       14 | 1984                               |
|       15 | OS MISERÁVEIS                      | <--
|       16 | A HORA DA ESTRELA                  | <--
|       17 | NOVEMBRO DE 73                     |
|       18 | OS MISERÁVEIS                      | <-- REPETIDO
|       19 | A DIVINA COMÉDIA                   |
|       20 | A HORA DA ESTRELA                  | <-- REPETIDO
|       21 | IRACEMA                            |
|       22 | O QUINZE                           |
|       23 | O GUIA DO MOCHILEIRO DAS GALÁXIAS  |
+----------+------------------------------------+

SELECT DISTINCT IDLIVROS, TITULO
FROM LIVROS
GROUP BY TITULO
HAVING COUNT(TITULO) > 1;

+----------+-------------------+
| IDLIVROS | TITULO            |
+----------+-------------------+
|       16 | A HORA DA ESTRELA |
|       15 | OS MISERÁVEIS     |
+----------+-------------------+

--PARA DELETAR
DELETE FROM LIVROS WHERE IDLIVROS = 16;
DELETE FROM LIVROS WHERE IDLIVROS = 15;

-- ALTERAR O TIPO DE CAMPO
UPDATE 


--tags: apagar registro duplicado | mudar o tipo de campo | mudar tipo de coluna | alterar tipo de coluna
|F5156| PAG:
------------------------------------------------------------------------------

/* PADRÕES */

PK: PRIMARY KEY
FK: FOREIGN KEY

_TABELA PACIENTE_TABELA DE ONDE VEM

NOMES DE BANCO E TABELA SEMPRE NO SINGLULAR --CLIENTE, USUÁRIO, LIVRO

DELIMITADOR PADRÃO: ';'

DELIMITADOR DE PROGRAMAÇÃO: '$'

APELIDOS DE PONTEIRAMENTO: A INICIAL DA TABELA E UM PONTO --C. M.

PRIMARY KEYS: (IDNOMEDACOLUNA) -- SEM UNDERLINE E TUDO JUNTO

FOREIGN KEY: (ID_NOMEDACOLUNA) -- COM UNDERLINE E TUDO JUNTO 

NOMES DE CONSTRAINTS: FK_TABELA-AUTAL_TABELA-DE-LIGAÇÃO --CONSTRAINS QUE SE INSTALA NA TABELA TELEFONE, COM O NOME KF_CLIENTE_TELEFONE, QUE SIGNIFICA LIGAR A TABELA CLIENTE A TELEFONE 

TRIGGERS: NOME-DA-TRIGGER_NOME-DA-TABELA-QUE-A-TRIGGER-SE-INSTALA

--tags: 
|L4102| PAG:
------------------------------------------------------------------------------
FIM DO MÓDULO 1
...
