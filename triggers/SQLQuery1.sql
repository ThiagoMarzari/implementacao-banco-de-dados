

select * from FUNCIONARIO

-- Primeiro ele insere e depois executa o que está dentro do trigger --

CREATE TRIGGER olaMundo
ON FUNCIONARIO
AFTER INSERT -- Roda após o cõdigo que causou o trigger
AS
PRINT 'Olá mundo';

INSERT FUNCIONARIO(Pnome, Unome, Cpf)
VALUES
('Thiago', 'Rossato', '98765432121');


CREATE TRIGGER olaDenovo
ON FUNCIONARIO
INSTEAD OF INSERT -- substitui a operação que causou o disparo
AS
PRINT 'Olá de novo!'


-----------------------------------------

--Habilitar e desabilitar os triggers
--ENABLE | DISABLE

ALTER TABLE FUNCIONARIO
DISABLE TRIGGER olaMundo

--Visualizar triggers de uma tabela especifica
EXEC sp_helptrigger @tabname =	FUNCIONARIO

--Visualizar todos os triggers do bd
SELECT *
FROM sys.triggers
WHERE is_disabled = 0 OR is_disabled = 1

--POsso usar ALTER TRIGGER para alterar o trigger
CREATE TRIGGER triggerAfterFuncionarios
ON FUNCIONARIO
AFTER INSERT, UPDATE
AS
IF UPDATE(Pnome)
	BEGIN
		PRINT 'O nome foi alterado'
	END
ELSE
	BEGIN
		PRINT 'Nome não foi modificado'
	END

UPDATE FUNCIONARIO
SET Pnome = 'Thiago'
WHERE Cpf = '98765432121';

SELECT * FROM FUNCIONARIO;
