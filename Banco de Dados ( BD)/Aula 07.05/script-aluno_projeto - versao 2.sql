create database aluno_representante;

use aluno_representante;

create table Projeto (
	idProjeto int primary key auto_increment,
    nomeProjeto varchar(45),
    descricaoProjeto varchar(100)
);

create table Aluno (
	ra char(8) primary key,
    nomeAluno varchar(45),
    telefoneCelular varchar(14),
    fkProjeto int,
    foreign key (fkProjeto) references projeto(idProjeto),
    fkRepresentante char(8),
    foreign key (fkRepresentante) references aluno(ra)
);

create table Acompanhante (
	fkAluno char(8),
    foreign key (fkAluno) references aluno(ra),
	idAcompanhante int,
    primary key (idAcompanhante, fkAluno),
    nomeAcompanhante varchar(45),
    relacionamentoAluno varchar(30)
);

insert into projeto values 
	(null, 'IGNIS', 'Prevenção de Incêndios'),
    (null, 'Lumos', 'Iluminação correta de escritórios'),
    (null, 'Horizon', 'Facilitar o acesso a tecnologia');

insert into aluno values
	('01211011', 'Bianca Vediner', '11 98726-3013', 1, null),
	('01211001', 'Bruno Luis', '11 98546-3257', 1, null),
	('01211130', 'Vitoria Teixeira', '11 92543-1425', 2, null),
	('01211030', 'Gabriel Vidal', '11 92456-9745', 3, null),
	('01211025', 'Gabrielle Fideles', '11 94523-1523', 2, null);
    
insert into aluno values
	('01217444', 'Carlos Montani', '11 98723-4562', null, null),
	('01216572', 'Fernanda Cardoso', '11 98723-4562', null, null),
	('01219235', 'Paulo Almeida', '11 95632-5662', null, null);
    
update aluno set fkRepresentante = '01217444' where ra in ('01211001', '01211030', '01211025');
update aluno set fkRepresentante = '01216572' where ra = '01211011';
update aluno set fkRepresentante = '01219235' where ra = '01211130';

insert into acompanhante values
	('01211011', 1, 'Lucas Chavier', 'Namorado'),
	('01211030', 1, 'Julia Alves', 'Namorada'),
	('01211025', 1, 'Rafael Rodrigues', 'Namorado'),
	('01211001', 1, 'Gabriela Santos', 'Irmão'),
	('01211130', 2, 'Rosangela Guedes', 'Mãe'),
	('01211130', 3, 'Alberto Guedes', 'Pai');

select * from projeto;
select * from aluno;
select * from acompanhante;

select * from aluno inner join projeto 
	on fkProjeto = idProjeto;

select * from acompanhante inner join aluno 
	on fkAluno = ra;
    
select * from aluno as alunos inner join aluno as representantes
	on alunos.fkRepresentante = representantes.ra;
    
select * from aluno inner join projeto 
	on fkProjeto = idProjeto
    where nomeProjeto = 'Lumos';
    
select * from acompanhante inner join aluno
	on fkAluno = ra
    inner join projeto
    on fkProjeto = idProjeto;