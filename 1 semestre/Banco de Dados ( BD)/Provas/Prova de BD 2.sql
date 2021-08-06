CREATE DATABASE ac2Daniel;

USE ac2Daniel;

CREATE TABLE DISCIPLINA(

ID_DISCIPLINA INT AUTO_INCREMENT,
NOME_DISCIPLINA VARCHAR(30),
CARGA_HORARIA INT,
CONPETENCIAS_EXIGIDAS VARCHAR(45),
TOTAL_AULA INT,
ANO_COMEÇO VARCHAR(25),

PRIMARY KEY(ID_DISCIPLINA) 

);

CREATE TABLE PROFESSOR(

ID_PROFESSOR INT AUTO_INCREMENT,
NOME_PROFESSOR VARCHAR(45),
SEXO_PROFESSOR CHAR(1),
CHECK (SEXO_PROFESSOR = 'M' OR SEXO_PROFESSOR = 'F'),
DISCIPLINA_PREFERENCIA VARCHAR(30),
TELEFONE_PROFESSOR VARCHAR(11),
EMAIL_PROFESSOR VARCHAR(45),
FK_DISCIPLINA INT,


PRIMARY KEY (ID_PROFESSOR),
FOREIGN KEY (FK_DISCIPLINA) REFERENCES DISCIPLINA(ID_DISCIPLINA)

)AUTO_INCREMENT = 100;

INSERT INTO DISCIPLINA VALUES(NULL, 'Matemática', 600, 'É exigido do professor mestrado e doutorado', 800, 'leciona em 2021/2'),
							 (NULL, 'Português', 600, 'É exigido do professor bacharel em letras', 800, 'leciona em 2021/2'),
                             (NULL, 'História', 400, 'É exigido do professor apenas mestrado', 600, 'leciona em 2022/1'),
                             (NULL, 'Inglês', 400, 'É exigido do professor mestrado e doutorado', 600, 'leciona em 2022/1');
                             
INSERT INTO PROFESSOR VALUES(NULL, 'Claudio da silva', 'M', 'Matemática', '11996929941', 'cladio@gmail.com', '1'),
							(NULL, 'Rosa Dias', 'F', 'Inglês', '11969412941', 'Rosa@gmail.com', '4'),
                            (NULL, 'Luciana Monteiro', 'F', 'Português', '11951564421', 'Luciana@gmail.com', '2'),
                            (NULL, 'Guilherme Passos', 'M', 'Matemática', '11955413341', 'Guilherme@gmail.com', '1'),
                            (NULL, 'Ana Pinheiro', 'F', 'Português', '11975496211', 'Ana@gmail.com', '2'),
                            (NULL, 'Katye Esaka', 'F', 'História', '11989483781', 'Katye@gmail.com', '3');
                            
select * from DISCIPLINA;

select * from PROFESSOR;

-- Exibir os dados das tabelas de forma correspondente, ou seja, com a junção entre as duas tabelas;
select * from PROFESSOR P join DISCIPLINA D on P.FK_DISCIPLINA = D.ID_DISCIPLINA;

-- Exibir os dados das tabelas, de forma correspondente, ou seja, com a junção entre as duas tabelas e com uma condição de filtro;
select * from PROFESSOR P join DISCIPLINA D on P.FK_DISCIPLINA = D.ID_DISCIPLINA Where D.NOME_DISCIPLINA = 'Matemática';

-- Exibir os dados de uma tabela utilizando uma das funções aprendidas (MAX,MIN, SUM, GROUP BY, AVG, COUNT);
select P.NOME_PROFESSOR, D.NOME_DISCIPLINA, truncate(sum(CARGA_HORARIA),1) from PROFESSOR P join DISCIPLINA D on P.FK_DISCIPLINA = D.ID_DISCIPLINA;

