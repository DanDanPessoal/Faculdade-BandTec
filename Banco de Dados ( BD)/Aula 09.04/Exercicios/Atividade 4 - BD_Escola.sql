Create database ESCOLA;

USE ESCOLA;

CREATE TABLE ALUNO(

ID_ALUNO INT AUTO_INCREMENT,
NOME_ALUNO VARCHAR(45),
DATA_NASCIMENTO DATE,
SEXO CHAR(1),
CHECK (SEXO = 'M' OR SEXO = 'F'),
FK_CURSO INT,

PRIMARY KEY (ID_ALUNO),
FOREIGN KEY (FK_CURSO) REFERENCES CURSO(ID_CURSO)

);

CREATE TABLE CURSO (

ID_CURSO INT AUTO_INCREMENT,
NOME_CURSO varchar(45),
CARGA_CURSO VARCHAR(20),
TOTAL_AULAS INT,

PRIMARY KEY(ID_CURSO)

);

INSERT INTO ALUNO VALUES(NULL, 'Daniel Katsuaki', '2003-04-16', 'M', '3'),
						(null, 'Claudio da silva', '2005-08-22', 'M', '2'),
                        (null, 'Rosa Dias', '2004-05-12', 'F', '2'),
                        (null, 'Roberto Severino', '2003-09-10', 'M', '1'),
                        (null, 'Barbara Costa', '2004-08-04', 'F', '4'),
                        (null, 'Kelly Cristina', '2003-02-02', 'F', '5');
                        
INSERT INTO CURSO VALUES (NULL, 'Gastronomia', '600 Horas', 40),
						 (null, 'Carpintaria', '500 Horas', 35),
                         (null, 'Programação', '700 Horas', 50),
                         (null, 'Canto', '600 Horas', 40),
                         (null, 'Psicologia', '700 Horas', 50),
                         (null, 'Advogacia', '800 Horas', 60);
					
SELECT * FROM CURSOS;

SELECT * FROM ALUNO;

-- Alterando a tabela ALUNO, modificando o 'NOME_ALUNO' para varchar(30)
alter table ALUNO modify NOME_ALUNO varchar(30);

-- Deletando da tabela CURSO onde tem o ID_CURSO igual a 6
 delete from CURSO WHERE ID_CURSO = 6;
 
-- Mostrando as duas tabelas juntas
SELECT * FROM ALUNO A JOIN CURSO C ON C.ID_CURSO = A.FK_CURSO; 
 
-- Mostrando apenas dois campos de cada tabela
SELECT A.NOME_ALUNO, A.SEXO, C.NOME_CURSO, C.CARGA_CURSO from CURSO C JOIN ALUNO A ON C.ID_CURSO = A.FK_CURSO;

-- Mostrando tudo das duas tabelas, mas de um aluno especifico
SELECT * FROM ALUNO A JOIN CURSO C ON C.ID_CURSO = A.FK_CURSO WHERE A.NOME_ALUNO = 'Daniel Katsuaki';

-- Mostrando tudo das duas tabelas, mas de um curso especifico
SELECT * FROM ALUNO A JOIN CURSO C ON C.ID_CURSO = A.FK_CURSO WHERE C.NOME_CURSO = 'Carpintaria';

-- Mostrando tudo das duas tabelas, mas de um sexo especifico
SELECT * FROM ALUNO A JOIN CURSO C ON C.ID_CURSO = A.FK_CURSO WHERE A.SEXO = 'F';

-- deletando as duas tabelas
drop table CURSO;

drop table ALUNO;
