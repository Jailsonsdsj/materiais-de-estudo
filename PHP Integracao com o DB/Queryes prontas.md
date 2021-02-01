Queryes prontas





Cadastrar livros

~~~~mysql
insert into livros (idlivros,titulo,imagem,autor,preco,paginas,isbn,id_genero,id_editora,id_tipo,estoque) VALUES COMPLEMENTO_DO_ALGORITMO
~~~~



Consultar todos os livros

~~~~MYSQL
select l.titulo as "Título", l.autor as "Autor", g.nome as "Gênero", e.nome as "Editora", t.nome as "Tipo", l.preco as "Preço"
from livros l 
inner join genero g on l.id_genero = g.idgenero 
inner join editora e on l.id_editora = e.ideditora 
inner join tipo t on l.id_tipo = t.idtipo;
~~~~

~~~~mysql
SELECT l.imagem,l.titulo, l.autor,g.nome,e.nome,t.nome,l.preco,l.paginas,l.idioma,l.descricao from livros l
inner join genero g on l.id_genero = g.idgenero
inner join editora e on l.id_editora = e.ideditora
inner join tipo t on l.id_tipo = t.idtipo;
~~~~

