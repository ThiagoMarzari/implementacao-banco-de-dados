
CREATE PROCEDURE MostrarMenuNome
AS 
BEGIN
	PRINT 'THIAGO';
END

EXEC MostrarMenuNome;

CREATE PROCEDURE MostarNome
@nome VARCHAR(24)
AS
BEGIN
	PRINT @nome
END

EXEC MostarNome 'Juca';

CREATE PROCEDURE Teste
	@par1 INT OUTPUT
AS
BEGIN
	SET @par1 = @par1 * 2;
	RETURN;
END

DECLARE @valor INT = 15;
PRINT @valor;
EXEC Teste @valor OUTPUT
PRINT @valor;


CREATE PROCEDURE RetornaPessoa
	@cpf CHAR(11), @nomeCompleto VARCHAR(80) OUTPUT
AS
BEGIN
	SELECT @nomeCompleto = CONCAT(F.Pnome + ' ', F.Unome) 
	FROM FUNCIONARIO AS F
	WHERE F.Cpf = @cpf
END


DECLARE @nomeP VARCHAR(80);

EXEC RetornaPessoa 98798798733, @nomeP OUTPUT

PRINT @nomeP

SELECT * FROM FUNCIONARIO

CREATE TABLE TableTeste (
	nome VARCHAR(8),
	id INT
)

INSERT INTO TableTeste (nome, id)
VALUES
	('Juca', 1),
	('Juda', 2)

select * from TableTeste

UPDATE TableTeste 
SET nome = 'Thiago'
WHERE id = 1

DELETE FROM TableTeste
WHERE id = 2