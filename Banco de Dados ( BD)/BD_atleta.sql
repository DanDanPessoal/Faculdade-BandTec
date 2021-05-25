create database atleta;

use atleta;

create table atleta(

idAtleta int primary key,
nome varchar(40),
modalidade varchar(40),
qtdMedalha int

);

insert into atleta
values(1, 'Ricardo Lucarreli', 'vôlei', 15),
	  (2, 'Wallace', 'vôlei', 9), 
      (3, 'Robert Scheidt', 'Vela', 5 ),
      (4, 'Fernanda Decnop', 'Vela', 1),
      (5, 'Alessandra', 'Basquete', 4),
      (6, 'Anderson Varejão', 'Basquete', 6);
      
      
select * from atleta;

select nome, qtdMedalha from atleta;

select * from atleta where modalidade = 'vôlei';

select * from atleta order by modalidade;

select * from atleta order by qtdMedalha desc;

select * from atleta where nome like '%s%';

select * from atleta where nome like 'r%';

select * from atleta where nome like '%o';

select * from atleta where nome like '%r_';

drop table atleta;