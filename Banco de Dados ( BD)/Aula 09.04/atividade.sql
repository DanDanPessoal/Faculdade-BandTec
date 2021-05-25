create database cliente_pets;

use cliente_pets;

create table cliente(

idCliente int primary key auto_increment,
NomeCliente varchar(45),
TelefoneFixo varchar(9),
TelefoneCelular varchar(12),
endereco_cliente varchar(45)

);

create table pets(

idPets int primary key auto_increment,
TipoPets varchar(25),
NomePets varchar(45),
RacaPets varchar(30),
dataNascimento date,
FkCliente int,
foreign key (FkCliente) references cliente(idCliente)

)auto_increment = 101;

insert into cliente values (null, 'Daninel Katsuaki Lino', '4321 1234', '99874312', 'Rua da silva, 110, Jardim paineira'),
							(null, 'Samuel Tamoaki Lino', '1234 4321', '912345678', 'Rua são cristovão, 120, Manoel feio'),
                            (null, 'Miguel Tsuyoshi', '1437 5642', '945712345', 'Rua filipinas, 130, Vila Matilde');
                            
insert into pets values (null, 'Cachorro', 'Scrooby', 'Vira lata', '2009-05-26', '1'),
						(null, 'Cachorro', 'Sky', 'Labrador', '2019-10-20', '1'),
                        (null, 'Cachorro', 'Bear', 'Labrador', '2016-09-10', '2'),
                        (null, 'Gato', 'Iron', 'Gato cinza', '2017-05-02', '3'),
                        (null, 'Gato', 'Iria', 'Gato cinza', '2016-12-28', '2'),
                        (null, 'Hamster', 'Simba', 'Preto e branco', '2018-07-15', '3');

select * from cliente;

select * from pets;

alter table cliente modify NomeCliente varchar(30);

select * from pets where RacaPets = 'Labrador';

select NomePets, dataNascimento from pets;

select * from pets order by NomePets asc;

select * from cliente order by endereco_cliente desc;

select * from pets where NomePets like 'I%';

select * from cliente where NomeCliente like '%Lino';

update cliente set TelefoneFixo = '4888 9457' where idCliente = '3';

select * from cliente;

select * from pets join cliente on FkCliente = idCliente;

select * from cliente join pets on FkCliente = idCliente where NomeCliente = 'Samuel Tamoaki';

delete from pets where idPets = '102';

select * from pets;

drop table pets;

drop table cliente;
