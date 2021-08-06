create database Aluno_Turma_Disciplina;

use Aluno_Turma_Disciplina;

create table aluno(

id_aluno int auto_increment,
nome_aluno varchar(35),
telefone varchar(12),

primary key (id_aluno)

);

create table disciplina(

id_disciplina int auto_increment,
nome_disciplina varchar(25),
carga_horaria int,

primary key (id_disciplina)

);

create table turma(

nota_turma decimal(4,2),
qtd_falta int,
fk_aluno int,
fk_disciplina int,

primary key (fk_aluno, fk_disciplina),
foreign key (fk_aluno) references aluno (id_aluno),
foreign key (fk_disciplina) references disciplina (id_disciplina)

);

insert into aluno values(null, 'Daniel Katsuaki', '11996929941'),
						(null, 'Claudio Duarte', '11974925911'),
                        (null, 'Miguel Lino', '11984926958'),
                        (null, 'David Queiroz', '11998494415'),
                        (null, 'Samuel Lino', '11951928441');
                        
insert into disciplina values(null, 'Matematica', 600),	
							 (null, 'Português', 600),
                             (null, 'História', 500),
                             (null, 'Artes', 400),
                             (null, 'Inglês', 500);
                             
insert into turma values(09.3, 8, 1, 1),
						(05.5, 2, 1, 2),
                        (07.2, 22, 1, 3),
                        (06.1, 100, 1, 4),
                        (10.0, 15, 1, 5),
                        (08.6, 35, 5, 1);
                        

                        
