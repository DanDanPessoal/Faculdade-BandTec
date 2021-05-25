create database apresentacao_grupos;

USE apresentacao_grupos;

create table grupo(

id_grupo INT NOT NULL AUTO_INCREMENT,
nome_grupo VARCHAR(45),
desc_projeto VARCHAR(45),

PRIMARY KEY (id_grupo)

);

create table aluno(

ra_aluno INT NOT NULL AUTO_INCREMENT,
nome_aluno VARCHAR(45),
email_aluno VARCHAR(45),
fk_grupo INT NOT NULL,

PRIMARY KEY (ra_aluno),
FOREIGN KEY (fk_grupo) REFERENCES grupo(id_grupo)

);

create table professor(

id_professor INT NOT NULL AUTO_INCREMENT,
nome_professor VARCHAR(45),
disciplina_professor VARCHAR(45),

PRIMARY KEY (`id_professor`)

)AUTO_INCREMENT = 1000;

create table avaliacao(

fk_professor INT NOT NULL,
fk_grupo INT NOT NULL,
data_hora DATETIME ,
nota_professor double,

PRIMARY KEY (fk_professor, fk_grupo),
FOREIGN KEY (fk_professor) REFERENCES professor(id_professor),
FOREIGN KEY (fk_grupo) REFERENCES grupo(id_grupo)

);

insert into grupo values 	(null, 'alfaCompany', 'Monitoramento de alface'), (null, 'MaçaCompany', 'Monitoramento de maça'),
							(null, 'peraCompany', 'Monitoramento de pera'), (null, 'bananaCompany', 'Monitoramento de banana');

insert into aluno values 	(null, 'Daniel K', 'linodaniel59@gmail.com', '1'), (null, 'Vitor Herculano', 'vitor@gmail.com', '1'),
							(null, 'Matheus', 'matheus@gmail.com', '2'), (null, 'Claudio', 'claudio@gmail.com', '2'),
                            (null, 'Samuel', 'samuel@gmail.com', '3'), (null, 'Miguel', 'miguel@gmail.com', '3'),
                            (null, 'Beatriz', 'beatriz@gmail.com', '4'), (null, 'Monique', 'monique@gmail.com', '4');
                            
                            
insert into professor values (null, 'Alex Barreira', 'banco de dados'), (null, 'Frizza', 'Algoritmos'), 
							 (null, 'Fernando Brandao', 'Pesquisa e inovação'), (null, 'Eduardo', 'Arquitetura computacional');
                             
insert into avaliacao values ('1000', '1', '2021-05-10 10:32:12', 10), ('1001', '1', '2021-05-10 10:32:32', 8),
							 ('1000', '2', '2021-05-11 10:30:10', 7), ('1001', '2', '2021-05-11 10:34:30', 9),
                             ('1002', '3', '2021-05-12 10:31:40', 5), ('1003', '3', '2021-05-12 10:35:15', 6),
                             ('1002', '4', '2021-05-13 10:23:27', 8), ('1003', '4', '2021-05-13 10:29:22', 9);
       
/* 3 */
select * from grupo;

/* 3 */
select * from aluno;

/* 3 */
select * from professor;

/* 3 */
select * from avaliacao;

/* 5 */
select g.nome_grupo, g.desc_projeto, a.nome_aluno, a.email_aluno from grupo g join aluno a on g.id_grupo = a.fk_grupo;

/* 6 */
select g.nome_grupo, g.desc_projeto, a.nome_aluno, a.email_aluno from grupo g join aluno a on g.id_grupo = a.fk_grupo;
                             
/* 7 */
select avg(av.nota_professor) from avaliacao av;

/* 8 */
select max(av.nota_professor), min(av.nota_professor) from avaliacao av;

/* 9 */
select sum(av.nota_professor) from avaliacao av;

/* 10 */
select p.nome_professor, p.disciplina_professor, g.nome_grupo, g.desc_projeto, av.data_hora 
from professor p join avaliacao av on p.id_professor = av.fk_professor 
join grupo g on g.id_grupo = av.fk_grupo;

/* 11 */
select p.nome_professor, p.disciplina_professor, g.nome_grupo, g.desc_projeto, av.data_hora 
from professor p join avaliacao av on p.id_professor = av.fk_professor 
join grupo g on g.id_grupo = av.fk_grupo where g.nome_grupo = 'alfaCompany';

/* 12 */
select p.nome_professor, g.nome_grupo, g.desc_projeto
from professor p join avaliacao av on p.id_professor = av.fk_professor 
join grupo g on g.id_grupo = av.fk_grupo where p.nome_professor = 'Alex Barreira';

/* 13 */
select g.nome_grupo, g.desc_projeto, a.nome_aluno, a.email_aluno, p.nome_professor, p.disciplina_professor, av.data_hora 
from professor p join avaliacao av on p.id_professor = av.fk_professor 
join grupo g on g.id_grupo = av.fk_grupo join aluno a on a.fk_grupo = g.id_grupo;

/* 14 */
select av.nota_professor, count(av.nota_professor) from avaliacao av group by av.nota_professor;

/* 15 */
select p.nome_professor, avg(av.nota_professor), sum(av.nota_professor)
from professor p join avaliacao av on p.id_professor = av.fk_professor group by p.nome_professor;

/* 16 */
select g.nome_grupo, avg(av.nota_professor), sum(av.nota_professor)
from grupo g join avaliacao av on g.id_grupo = av.fk_grupo group by g.nome_grupo;

/* 17 */
select p.nome_professor, max(av.nota_professor), min(av.nota_professor)
from professor p join avaliacao av on p.id_professor = av.fk_professor group by p.nome_professor;

/* 18 */
select g.nome_grupo, max(av.nota_professor), min(av.nota_professor)
from grupo g join avaliacao av on g.id_grupo = av.fk_grupo group by g.nome_grupo;
