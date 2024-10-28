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

select * from tbl_pessoa