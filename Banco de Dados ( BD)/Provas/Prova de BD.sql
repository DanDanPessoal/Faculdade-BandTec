create database Programa;

use Programa;

create table Programa (

idPrograma int primary key,
nome varchar(40),
genero varchar(30),
emissora varchar(20)

);


insert into Programa
values (1, 'TvRatibum', 'Infantil', 'Globo'), (2, 'Bom dia e companhia', 'Infantil', 'SBT'), 
	   (3, 'Balanço geral', 'Noticiario', 'Record'), (4, 'Jornal Nacional', 'Noticiario', 'Globo'), 
	   (5, 'Desenho e animacao', 'Desenho', 'SBT'), (6, 'Desenho da record', 'Desenho', 'Record'),
       (7, 'Conversa da Tec', 'Conversa', 'Bandtec'), (8, 'Bate papo da tec', 'Conversa', 'Bandtec');
       
select * from Programa;

select nome, emissora from Programa;

select * from Programa where emissora = 'Bandtec';

select * from Programa order by genero;

select * from Programa order by nome desc;

select * from Programa where nome like '%o';

select * from Programa where genero like 'N%';

select * from Programa where nome like '%a_';

update Programa set emissora = 'Bandtec' where idPrograma = 2;

select * from Programa;

delete from Programa where idPrograma = 4;

select * from Programa;