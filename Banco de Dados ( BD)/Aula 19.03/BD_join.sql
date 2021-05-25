create database Escola;

use Escola;

create table aula(

id_aula int primary key auto_increment,
nome varchar(30),
tipo char(1),
check (tipo = 'o' or tipo = 'h' or tipo = 'p'),
data_aula date,
mensagem varchar(100)

);

select * from aula;

insert into aula
values	(null, 'Apresentação da disciplina', 'o', '2021-04-02', 'Conhecendo banco de dados'),
		(null, 'Continuação de conceitos', 'o', '2021-02-08', 'O primeira comando a gente nn esquece');
        
insert into aula(nome, tipo, data_aula, mensagem)
values ('Permissão de usuário', 'p', '2021-02-05', 'Bem vindo'), ('Linha de comandos', 'p', '2021-02-25', 'Rodando o client');

insert into aula(nome, tipo, data_aula, mensagem)
values ('Comandos gerais', 'h', '2021-06-02', 'Salve'), ('Inner join', 'h', '2021-09-26', 'Juntando as tabelas');

select * from aula;

create table chamada(

	id_chamada int primary key auto_increment,
    data_presenca datetime default current_timestamp,
    presenca char(3),
    check (presenca = 'sim' or presenca = 'não'),
    fk_aula int,
    foreign key (fk_aula) references aula(id_aula)

)auto_increment = 20000;

create table alunos(

	id_aluno int primary key auto_increment,
	nome varchar(40)

);

insert into alunos (nome)
values('Daniel'), ('Samuel'), ('Miguel'), ('Gabriel Toledo');

alter table chamada add column fk_aluno int;
alter table chamada add foreign key (fk_aluno) references alunos(id_aluno);

select * from chamada;

insert into chamada(data_presenca, presenca, fk_aula, fk_aluno)
values 	('2021-11-28 09-58-40', 'sim', 2, 3), ('2021-06-28 12-12-30', 'não', 1, 1), 
		('2021-04-16 16-48-12', 'sim', 3, 4), ('2021-03-14 06-38-20', 'não', 2, 2);

-- selecionando a mensagem da tabela aula e a data da presença da tabela chamada, 
-- dps eu junto a tabela aula, tabela chamada e tabela alunos onde a data da presença da tabela chamada é igual a 2021-11-28 09-58-40

select aula.mensagem, chamada.data_presenca from aula join chamada on chamada.fk_aula = aula.id_aula 
join alunos on chamada.fk_aluno = alunos.id_aluno where chamada.data_presenca = '2021-11-28 09-58-40';

select * from chamada join aula on chamada.fk_aula = aula.id_aula ;

desc chamada;