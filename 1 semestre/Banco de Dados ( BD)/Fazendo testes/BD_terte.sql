create database teste;

use teste;

create table grupo(

id_grupo int primary key auto_increment,
descricao varchar(30)

);

select * from grupo;

create table produto(

id_produto int primary key auto_increment,
descricao varchar(50),
custo decimal(10,2),
estoque_atual decimal(10,3)

);

alter table produto add id_grupo int;

select * from produto;

alter table produto add foreign key (id_grupo) references grupo(id_grupo);

insert into grupo (descricao)
value ('Açougue'), ('Padaria'), ('Bebidas'), ('Higiene'), ('Hortifruti');

insert into produto(descricao, custo, estoque_atual)
values('Coca-cola', 4.20, 10.000), ('Fanta', 2.80, 10.000);

insert into  produto(descricao, custo)
values ('Bacalhau', 59), ('Lasanha congelada', 18);

insert into  produto(descricao, custo, id_grupo)
values ('Pão', 3, 2), ('Bolo de fubá', 15, 2), ('Cerveja cx', 25, 3), ('suco cx', 20, 3), ('costela bovina', 15, 1), ('Desodorante', 10, 4);

select * from produto;