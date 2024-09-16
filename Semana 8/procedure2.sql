/*
CREATE PROCEDURE p_teste_valor_padrao ( @param1 INT, @param2
VARCHAR(20) = �Valor Padr�o�)
AS
SELECT �Valor do par�metro 1: � + CAST(@param1 AS VARCHAR)
SELECT �Valor do par�metro 2 � + @param2

Crie uma procedure que faz uma listagem dos funcion�rios por
departamento, mas se o departamento n�o for especificado, ela lista todos
os funcion�rios
*/

ALTER PROCEDURE ListaFuncionariosDepartamento @departamento INT = -1
AS
BEGIN
	IF @departamento = -1
	BEGIN
		SELECT * FROM FUNCIONARIO
		PRINT 'Lista de funcionarios'
		RETURN
	END

	SELECT *
	FROM FUNCIONARIO AS F
	WHERE F.Dnr = @departamento

	PRINT 'Foi'
		
END

EXEC ListaFuncionariosDepartamento 1

select * from DEPARTAMENTO