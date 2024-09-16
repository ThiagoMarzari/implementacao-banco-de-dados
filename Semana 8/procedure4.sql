--Crie uma procedure que retorna o nome completo de um funcion�rio com
--base no CPF passado como par�metro de entrada.

CREATE PROCEDURE RetornaNomeCompleto 
	@nomeCompleto VARCHAR(150) OUTPUT, 
	@Cpf CHAR(11)
AS
BEGIN
	

	SELECT CONCAT(f.Pnome, ' ' + f.Minicial, ' ' + f.Unome ) AS 'Nome completo'
	FROM FUNCIONARIO AS F
	WHERE @Cpf = f.Cpf
	RETURN

	IF @nomeCompleto IS NULL
		SET @nomeCompleto = 'CPF n�o encontrado!'
END

Select * from FUNCIONARIO

DECLARE @nomeC VARCHAR(150) = ''
PRINT @nomeC
EXEC RetornaNomeCompleto @nomeC OUTPUT, 33344555587

PRINT @nomeC