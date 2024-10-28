-- Restrições declarativas
/*
	NOT NULL
	UNIQUE
	PRIMARY KEY
	FOREIN KEY
	CHECK
	DEFAULT
	CREATE INDEX
*/

CREATE DATABASE AULA10;
USE AULA10;

CREATE TABLE tbl_pessoa(
	id INT PRIMARY KEY IDENTITY(100, 10),
	nome_pessoa VARCHAR(50),
	nome_pet VARCHAR(50),
	num_pet INT CHECK(num_pet > 0), -- Para cadastrar o num tem que ser > 0
	idade INT CHECK (idade BETWEEN 18 AND 95),
	sexo_pet CHAR CHECK (sexo_pet IN ('M', 'F', 'N'))
);


--Testando as restrições criadas

INSERT INTO tbl_pessoa (nome_pessoa, nome_pet, num_pet, idade, sexo_pet) 
	VALUES 
	('Thiago', 'Mel', 1, 22,'F'), 
	('Cássia', 'Rim', 2, 19 ,'M');

select * from tbl_pessoa

INSERT INTO tbl_pessoa VALUES ('Juca', 'Gargameu', 0, 30, 'M'); -- num_pet = 0, vai dar erro
INSERT INTO tbl_pessoa VALUES ('Juca', 'Gargameu', 1, 15, 'M'); -- Menor de idade
INSERT INTO tbl_pessoa VALUES ('Juca', 'Gargameu', 1, 30, '0'); -- Sexo invalido
INSERT INTO tbl_pessoa VALUES ('Juca', 'Gargameu', -15, 30, 'F'); -- Erro num_pet < 1
INSERT INTO tbl_pessoa VALUES ('Juca', 'Gargameu', 15, 30, 'F'); -- Agora vai