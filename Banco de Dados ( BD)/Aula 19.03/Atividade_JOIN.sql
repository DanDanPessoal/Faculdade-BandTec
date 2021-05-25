create database pais;

use pais;

create table pais(

id_pais int auto_increment primary key,
nome varchar(50),
qtd_habitantes varchar(50),
PIB_pais varchar(50),
ranking_pais int

);

create table atleta(

id_atleta int primary key auto_increment,
nome varchar(50),
idade int,
qtd_medalhas int,
data_nascimento date,
fk_pais int,
foreign key (fk_pais) references pais(id_pais) 

);

insert into pais
values(null, 'Canada', '37,59 trilhões', '1,7 trilhões', '2'), (null, 'Brasil', '209,5 milhões', '1,8 trilhões', '100')
	 ,(null, 'EUA', '328,2 milhões', '20,54 trilhões', '4'), (null, 'China', '1,393 bilhão', '13,61 trilhões', '1');

insert into atleta
values(null, 'Daniel', 22, 10, '1999-04-16', 1), (null, 'Carlinhos', 21, 5, '2000-03-22', 2), 
	  (null, 'Adrian', 21, 4, '2000-01-05', 3), (null, 'Paulo', 17, 15, '2003-04-16', 1);

select atleta.nome, atleta.idade, atleta.qtd_medalhas, atleta.data_nascimento, pais.nome, pais.ranking_pais 
from atleta join pais on pais.id_pais = atleta.fk_pais; 

select atleta.nome, atleta.qtd_medalhas, pais.nome
from atleta join pais on pais.id_pais = atleta.fk_pais;

create table modalidade(

id_modalidade int primary key auto_increment,
nome varchar(50),
ano_criação date,
pais_criacao varchar(50),
tipo varchar(50),
fk_atleta int,
foreign key (fk_atleta) references atleta(id_atleta)

);

insert into modalidade
values(null, 'Corrida de pista', '1959-10-04', 'Angola', 'atletismo', 1), (null, 'Corrida de obstaculos', '1985-12-16', 'Argentina', 'atletismo', 3),
	  (null, 'Ciclismo', '1990-04-12', 'Russia', 'olimpiadas', 2), (null, 'Natação', '1950-06-28', 'Japao', 'Olimpiadas', 3);
      
select atleta.nome, atleta.qtd_medalhas, modalidade.nome, modalidade.tipo
from atleta join modalidade on modalidade.fk_atleta = atleta.id_atleta;      
