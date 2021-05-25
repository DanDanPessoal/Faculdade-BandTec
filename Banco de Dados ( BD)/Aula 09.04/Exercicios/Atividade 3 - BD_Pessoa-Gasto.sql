create database PESSOA_GASTO;

USE PESSOA_GASTO;

CREATE TABLE PESSOA(

ID_PESSOA INT AUTO_INCREMENT,
NOME_PESSOA VARCHAR(45),
DATA_NASCIMENTO DATE,
PROFISSAO_PESSOA VARCHAR(45),
PRIMARY KEY (ID_PESSOA)

);

CREATE TABLE GASTO(

ID_GASTO INT AUTO_INCREMENT,
DATA_GASTO DATE,
VALOR_GASTO INT,
DESCRICAO_GASTO VARCHAR(45),
FK_PESSOA INT,
primary key (ID_GASTO),
foreign key (FK_PESSOA) REFERENCES PESSOA(ID_PESSOA)

);

INSERT INTO PESSOA VALUES (NULL, 'Daniel Katsuaki', '2003-04-16', 'Programador'),
						  (null, 'Gustavo Isaac', '1999-10-07', 'Programador'),
                          (null, 'Samuel tamoaki', '2000-12-22', 'Médico'),
                          (null, 'Derik Da silva', '1995-05-14', 'Médico'),
                          (null, 'Claudia robertine', '1980-08-25', 'Empresária'),
                          (null, 'Rosa Dias', '1991-02-05', 'Empresária');
                          
INSERT INTO GASTO VALUES (NULL, '2021-04-11', 25.12, 'Caneca para café','3'),
						 (null, '2021-03-05', 3500.00, 'Notebook da Razer','1'),
                         (null, '2021-02-22', 10.00, 'Pacote de cartinhas','2'),
                         (null, '2021-04-02', 1200.00, 'Celular da motorola','1'),
                         (null, '2021-01-22', 100.00, 'Bicicleta', '6'),
                         (null, '2021-03-29', 25.00, 'Garrafa termica', '4');

Select * from PESSOA;

Select * from GASTO;

select * from PESSOA where PROFISSAO_PESSOA = 'Programador';

Select * from GASTO where VALOR_GASTO >= 1200.00; 

select * from PESSOA join GASTO on ID_PESSOA = FK_PESSOA;

update GASTO set VALOR_GASTO = '80.00' where ID_GASTO = 5;

delete from PESSOA where ID_PESSOA = 5;