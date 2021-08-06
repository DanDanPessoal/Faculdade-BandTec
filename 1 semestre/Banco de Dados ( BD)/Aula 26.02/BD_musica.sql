create database musica;

use musica;

create table musica(

idMusica int primary key,
titulo varchar(40),
artista varchar(40),
genero varchar(40)

);

insert into musica
values(1, 'Help!', 'The Beatles', 'Rock'),
	  (2, 'Revolution', 'The Beatles', 'Rock'),
      (3, "God's Plan", 'Drake', 'Hip-Hop'),
      (4, 'Hotline Bling', 'Drake', 'Hip Hop'),
      (5, 'A vida é desafio', 'Racionais', 'Rap'),
      (6, 'Jesus Chorou', 'Racionais', 'Rap');
      
select * from musica;

select titulo, artista from musica;

select * from musica where genero = 'Rock';

select * from musica where artista = "Drake";

select * from musica order by titulo;

select * from musica order by artista desc;

select * from musica where titulo like 'H%';

select * from musica where artista like '%s';

select * from musica where genero like '_o%';

select * from musica where titulo like '%o_';

drop table musica	;
