create database filmes;

use filmes;

create table filme(

id_filme int primary key,
titulo varchar(30),
genero varchar(15),
diretor varchar(30)

);

select * from filme;

insert into fIlme		-- quando vai inserir todos os dados da tabela, não precisa especificar os campos
values(1, 'transformers', 'acão', 'Michael Bay');

insert into filme(id_filme, titulo)		-- inserindo apenas dados do id_filme e titulo
values(2, 'Velozes e furiosos');

insert into filme(titulo, id_filme)		-- inserindo apenas dados do titulo e id_filme
values('Madasgascar', 3);

insert into filme(id_filme, titulo)
values(4, 'Corra'), (5, 'Bacurau'), (6, 'Matrix'), (7 ,'vingadores'), (8, 'Pantera Negra'); -- inserindo vários valores

select * from filme;

select * from filme where id_filme = 2;		-- selecionando tudo dentro da tabela filme com o id_filme igual a 2

select * from filme where id_filme >= 2;	-- selecionando tudo dentro da tabela filme com o id_filme maior igual a 2

select * from filme where id_filme <> 2;	-- selecionando tudo dentro da tabela filme com o id_filme diferente de 2

select * from filme where titulo like 'm%';	-- selecionando tudo dentro da tabela filme com o titulo que começa com "M"

select * from filme where titulo like '%r';	-- selecionando tudo dentro da tabela filme com o titulo que termina com "r"

select * from filme where titulo like '%m%'; -- selecionando tudo dentro da tabela filme com o titulo que tem com "M" no meio

select * from filme where titulo like '_a%';	-- selecionando tudo dentro da tabela filme com o titulo que tem o segundo caractere "a"

select * from filme where titulo like '__a%';	-- selecionando tudo dentro da tabela filme com o titulo que tem o 3 caractere "a"

update filme set genero = 'ação', diretor = 'Rob Cohen' where id_filme = 2; -- atualizando a tabela filme, onde eu atualizo o genero e diretor do filme que tem o id_filme igual a 2

update filme set genero = 'comédia', diretor = 'Tom McGrath' where id_filme = 3; -- atualizando a tabela filme, onde eu atualizo o genero e diretor do filme que tem o id_filme igual a 3

update filme set genero = 'terror', diretor = 'Jordan Peele' where id_filme = 4; -- atualizando a tabela filme, onde eu atualizo o genero e diretor do filme que tem o id_filme igual a 4

update filme set genero = 'suspence', diretor = 'Juliano Dornelles' where id_filme = 5; -- atualizando a tabela filme, onde eu atualizo o genero e diretor do filme que tem o id_filme igual a 5

update filme set genero = 'ficção', diretor = 'Lana Wachowski' where id_filme = 6; -- atualizando a tabela filme, onde eu atualizo o genero e diretor do filme que tem o id_filme a 6

update filme set genero = 'Fantasia', diretor = 'Joss Whedon' where id_filme = 7; -- atualizando a tabela filme, onde eu atualizo o genero e diretor do filme que tem o id_filme igual a 7

update filme set genero = 'Fantasia', diretor = 'Ryan Coogler' where id_filme = 8; -- atualizando a tabela filme, onde eu atualizo o genero e diretor do filme que tem o id_filme igual a 8

select * from filme;

delete from filme where id_filme = 5; -- deletando da tabela, onde tem o id_filme igual a 5

update filme set id_filme = 5 where id_filme = 6; -- atualizando a tabela filme, onde eu troco o id_filme para 5, que antes estava 6

update filme set id_filme = 6 where id_filme = 7;

drop table filme;

drop database filmes;

update filme set genero = 'ação' where id_filme in (7,8); -- atualizando a tabela filme, onde eu mudo o genero para 'ação' os generos com id_filme 7 e 8 (Mudando de dois id_filme ao mesmo tempo)

update filme set diretor = 'Eu, Daniel K' where id_filme = 7 or id_filme = 8; -- atualizando a tabela, onde eu mudo o diretor para 'Eu, Daniel K', onde ele muda os diretores com id_filme 7 e 9 (ele excecuta um ou outro, tendo em vista que um ou outro possa não existir)

alter table filme add protagonista varchar(40); -- estou adicionando a nova coluna 'protagonista' na tabela filme

Update filme set protagonista= 'Eu' where id_filme in (1,2,3,4,5,6,7,8); 

select * from filme;

alter table filme modify protagonista varchar(2); -- modificando o tamanho de um campo dentro da tabela filme

desc filme; 		-- descreve a estrutura dos campos da tabela
describe filme;		-- descreve a estrutura dos campos da tabela

alter table filme drop protagonista; -- apagou a coluna 'protagonista' da tabela filme 
alter table filme drop column protagonista;		-- apagou a coluna 'protagonista' da tabela filme

select * from filme order by titulo desc;	-- estou exibindo a tabela filme ordenando o titulo por ordem alfabetica decrescente

select * from filme order by diretor asc;	-- estou exibindo a tabela filme ordenando o diretor por ordem alfabetica crescente
