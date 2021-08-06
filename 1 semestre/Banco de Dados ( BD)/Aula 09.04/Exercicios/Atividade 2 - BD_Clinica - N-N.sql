create database clinica;

use clinica;

create table PACIENTE(

ID_PACIENTE INT PRIMARY KEY AUTO_INCREMENT,
NOME_PACIENTE VARCHAR(45) NOT NULL,
TELEFONE_PACIENTE VARCHAR(45) NOT NULL,
ENDERECO_PACIENTE VARCHAR(45) NOT NULL,
TELEFONE2 VARCHAR(45)

);

CREATE TABLE MEDICO(

CRM_MEDICO INT PRIMARY KEY AUTO_INCREMENT,
NOME_MEDICO VARCHAR(45),
TELEFONE_MEDICO VARCHAR(45)

);

CREATE TABLE ESPECIALIDADE(

ID_ESPECIALIDADE INT PRIMARY KEY AUTO_INCREMENT,
NOME_ESPECIALIDADE VARCHAR(45) NOT NULL,
FK_MEDICO INT,

FOREIGN KEY (FK_MEDICO) REFERENCES MEDICO(CRM_MEDICO)

);

CREATE TABLE CONSULTAS(

ID_CONSULTAS INT PRIMARY KEY AUTO_INCREMENT,
FK_PACIENTE INT NOT NULL,
FK_MEDICO INT NOT NULL,
DATA_HORA datetime NOT NULL,
FOREIGN KEY (FK_PACIENTE) REFERENCES PACIENTE(ID_PACIENTE),
FOREIGN KEY (FK_MEDICO) REFERENCES MEDICO(CRM_MEDICO)

);

insert into PACIENTE values (null, 'Daniel', '11996929941', 'Rua serra da silva, 110', '1155664477'), 
							(null, 'Claudio', '1155664477', 'Rua alvivia, 220', default),
                            (null, 'Leo', '11456656654', 'Rua dois, 330', default),
                            (null, 'Joao', '126546522', 'Rua goleiro, 440', '11456656654');
                            
insert into MEDICO VALUES (NULL, 'samuel', '11996929941'), 
						  (null, 'Claudia', '1155456566'),
                          (null, 'Rosa', '21324656513'),
                          (null, 'Kelly', '55454678213');
                          
insert into ESPECIALIDADE VALUES (NULL, 'Cadiologista', 2), (NULL, 'Enfermeira(o)', 3), (NULL, 'Neurologista', 1), (null, 'Fisioterapeuta', 4),
								 (NULL, 'Psicologa(o)', 4);
                          
insert into CONSULTAS VALUES(null, '1', '1', '2021-04-11 11:32:52'),
							(null, '1', '4', '2020-04-16 12:30:00'),
                            (null, '3', '2', '2020-12-26 16:30:00'),
                            (null, '2', '1', '2020-08-06 09:30:00');
                            
select P.NOME_PACIENTE, M.NOME_MEDICO, E.NOME_ESPECIALIDADE, C.DATA_HORA from PACIENTE P join CONSULTAS C ON C.FK_PACIENTE = P.ID_PACIENTE
JOIN MEDICO M ON C.FK_MEDICO = M.CRM_MEDICO join ESPECIALIDADE E ON E.FK_MEDICO = M.CRM_MEDICO;
