create database revista;

use revista;

create table revista(

idRevista int primary key auto_increment,
nome varchar(40),
categoria varchar(30)

);

insert into revista(nome)
value('Veja'), ('Isto é'), ('Época'), ('Carta Capital');

select * from revista;

update revista set categoria = 'noticias' where idRevista = '1';

update revista set categoria = 'noticias' where idRevista = '2';

update revista set categoria = 'Beleza' where idRevista = '3';

update revista set categoria = 'Beleza' where idRevista = '4';

select * from revista;

describe revista;

alter table revista modify categoria varchar(40);	

desc revista;

alter table revista add periodicidade varchar(15);	

select * from revista;

alter table revista drop periodicidade;	

create table editora(

idEditora int primary key auto_increment,
nomeEditora varchar(40),
dataFund date,
idRevista int

)auto_increment = 1000;

select * from editora;

insert into editora(nomeEditora, dataFund)
values('Editora três', '1995-02-15'), 
	  ('Abril às quartas-feiras', '1999-02-28'), 
	  ('Globo', '2005-04-16'), 
      ('Confiança', '2002-12-03');
      
alter table editora add constraint fkEditora foreign key (idRevista) references revista(idRevista);	

update editora set idRevista = 1 where idEditora = 1000;

update editora set idRevista = 2 where idEditora = 1001;

update editora set idRevista = 4 where idEditora = 1002;

update editora set idRevista = 3 where idEditora = 1003;

select * from revista join editora on editora.idRevista = revista.idRevista;

select * from revista join editora on editora.idRevista = revista.idRevista where editora.nomeEditora = 'Globo';
