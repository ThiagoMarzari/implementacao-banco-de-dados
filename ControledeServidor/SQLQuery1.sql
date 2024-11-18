CREATE DATABASE AULA00;
USE AULA00;

CREATE TABLE BEBIDA (
	Id INT PRIMARY KEY IDENTITY(1,1),
	Nome VARCHAR(50),
	Valor MONEY
);

INSERT INTO BEBIDA 
VALUES  ('Coca', 10),
		('Suco Laranja', 5),
		('Suco limão', 4),
		('Cerveja Ultra', 8),
		('Cerveja Guarana', 15);


GRANT INSERT ON [dbo].[BEBIDA] TO Juca;

CREATE VIEW VW_BEBIDA
AS select * from BEBIDA;


