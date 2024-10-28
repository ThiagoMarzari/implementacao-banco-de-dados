--CASCADE


CREATE TABLE Pais(
	id INT PRIMARY KEY,
	nome VARCHAR(50),
	cod VARCHAR(3)
);

CREATE TABLE Estado(
	id INT PRIMARY KEY, 
	nome VARCHAR(50), 
	cod VARCHAR(3),
	id_pais INT
);

ALTER TABLE Estado ADD CONSTRAINT fk_estado_pais 
FOREIGN KEY (id_pais)
REFERENCES Pais(id)
ON DELETE CASCADE;

select * from Pais

--Inserindo informações no banco nas tabelas criadas acima
INSERT INTO [dbo].[Pais] VALUES (1,'Estados Unidos','EUA');
INSERT INTO [dbo].[Pais] VALUES (2,'Brasil','BR');
INSERT INTO [dbo].[Pais] VALUES (3,'Canada','CA');

INSERT INTO [dbo].Estado VALUES (1,'Califórnia','CA', 1);
INSERT INTO [dbo].Estado VALUES (2,'Alasca','AK', 1);
INSERT INTO [dbo].Estado VALUES (3,'Florida','FL', 1);
INSERT INTO [dbo].Estado VALUES (4,'Arizona','AZ', 1);

INSERT INTO [dbo].Estado VALUES (5,'Rio Grande do Sul','RS', 2);
INSERT INTO [dbo].Estado VALUES (6,'Acre','AC', 2);
INSERT INTO [dbo].Estado VALUES (7,'São Paulo','SP', 2);
INSERT INTO [dbo].Estado VALUES (8,'Sergipe','SE', 2);

INSERT INTO [dbo].Estado VALUES (9,'Ontario','ON', 3);
INSERT INTO [dbo].Estado VALUES (10,'Quebec','QC', 3);
INSERT INTO [dbo].Estado VALUES (11,'Toronto','TR', 3);
INSERT INTO [dbo].Estado VALUES (12,'Nova Escócia','NS', 3);

select * from Estado;
select * from Pais;

select p.nome, p.cod, e.nome, e.cod from Pais p 
join Estado e on p.id = e.id_pais
order by p.nome;