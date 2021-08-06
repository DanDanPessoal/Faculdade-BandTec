/*1.	Criar o banco de dados ac3-seuNome (ex.: ac3-vivian);*/
create database ac3_daniel;

/*2.	Selecionar o banco de dados criado;*/
use ac3_daniel;

/*3.	Criar as tabelas, configurar as chaves estrangeiras e inserir dados;*/
create table rota_favorita(

id_rota int auto_increment,
nome_rota varchar(45),
desc_rota varchar(45),

primary key (id_rota)

);

create table usuarios(

id_usuario int auto_increment,
nickname_lol varchar(45),
senha_usuario varchar(45),
fk_rota int,

primary key (id_usuario),
foreign key (fk_rota) references rota_favorita(id_rota)

);

create table tipo_ocorrencia(

id_tipo int auto_increment,
nome_tipo varchar(45),
criticidade varchar(45),

primary key (id_tipo)

);

create table ocorrencias(

id_ocorrencia int auto_increment,
desc_ocorrencia varchar(45),
fk_tipo int,

primary key (id_ocorrencia),
foreign key (fk_tipo) references tipo_ocorrencia(id_tipo)

);

create table registro(

id_registro int auto_increment,
fk_usuario int,
fk_ocorrencia int,
data_hora datetime,
tempo_partida double,

primary key (id_registro),
foreign key (fk_usuario) references usuarios(id_usuario),
foreign key (fk_ocorrencia) references ocorrencias(id_ocorrencia) 

);

insert into rota_favorita values
(null, 'TopLane', 'Fica em cima do mapa'), (null, 'Jungle', 'Fica entre as rotas'),
(null, 'MidLane', 'Fica no meio do mapa'), (null, 'adCarry', 'Fica embaixo do mapa'),
(null, 'Suporte', 'Fica embaixo do mapa');

insert into usuarios values
(null, 'DDKESL', 'dan1234', '5'), (null, 'MkTESL', 'tes1234', '4'),
(null, 'DalekDoctor', 'dalek1234', '3'), (null, 'GuiJoga', 'gui1234', '1'),
(null, 	'Claudio', 'claudio1234', '2');

insert into tipo_ocorrencia values
(null, 'caiu da partida', '1'), (null, 'se recusou a jogar na rota', '2'),
(null, 'Tóxico', '3'), (null, 'Feeding intencional', '4'),
(null, 'Descriminação', '5');

insert into ocorrencias values
(null, 'Caiu da partida do nada', '1'), (null, 'Ficou se matando', '4'),
(null, 'Ficou me xingando', '3'), (null, 'não quis jogar na rota que caiu', '2'),
(null, 'Não parou de se matar', '4');

insert into registro values
(null, '1', '3', '2021-05-20 15:14:29', 35.5), (null, '2', '3', '2021-04-13 16:10:20', 20.5),
(null, '5', '2', '2021-03-16 12:59:29', 15.4), (null, '3', '1', '2021-05-20 10:20:24', 12.8),
(null, '3', '3', '2021-05-20 15:14:29', 30.5), (null, '1', '2', '2021-04-13 16:10:20', 23.5);

/*4.	Exibir os dados das tabelas criadas separadamente;*/
select * from rota_favorita;

select * from usuarios;

select * from tipo_ocorrencia;

select * from ocorrencias;

select * from registro;

/*5.	Exibir os dados das tabelas do relacionamento 1:n, de forma correspondente;*/
select usu.nickname_lol, rota.nome_rota, rota.desc_rota
from usuarios usu join rota_favorita rota on usu.fk_rota = rota.id_rota;

/*6.	Exibir os dados das tabelas do relacionamento n:m, de forma correspondente;*/
select usu.nickname_lol, oco.desc_ocorrencia, re.data_hora, re.tempo_partida 
from usuarios usu join registro re on usu.id_usuario = re.fk_usuario
join ocorrencias oco on oco.id_ocorrencia = re.fk_ocorrencia;

/*7.	Exibir os dados das tabelas de forma correspondente do relacionamento a sua escolha, de um determinado campo;*/
select * from ocorrencias oco join tipo_ocorrencia ti on oco.fk_tipo = ti.id_tipo where ti.criticidade = '3';

/*8.	Exibir apenas um campo de uma entidade forte do relacionamento n:m e um campo da tabela associativa, de forma correspondente;*/
select usu.nickname_lol, re.data_hora
from usuarios usu join registro re on usu.id_usuario = re.fk_usuario
join ocorrencias oco on oco.id_ocorrencia = re.fk_ocorrencia;

/*9.	Exibir os dados da tabela associativa, utilizando o atributo numérico com pelo menos uma função aprendida (SUM, AVG, MIN, MAX)
 e agrupando esses dados por um determinado campo.*/
select rota.nome_rota, sum(re.tempo_partida)
from usuarios usu join registro re on usu.id_usuario = re.fk_usuario
join ocorrencias oco on oco.id_ocorrencia = re.fk_ocorrencia join rota_favorita rota on rota.id_rota = usu.fk_rota
group by rota.nome_rota;

/*10.	Fazer uma sub-Query com qualquer uma das tabelas*/
select usu.nickname_lol, oco.desc_ocorrencia, re.data_hora, re.tempo_partida 
from usuarios usu join registro re on usu.id_usuario = re.fk_usuario
join ocorrencias oco on oco.id_ocorrencia = re.fk_ocorrencia where re.tempo_partida > (select avg(re.tempo_partida) from registro re);

