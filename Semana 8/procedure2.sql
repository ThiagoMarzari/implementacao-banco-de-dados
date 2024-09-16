/*
CREATE PROCEDURE p_teste_valor_padrao ( @param1 INT, @param2
VARCHAR(20) = ‘Valor Padrão’)
AS
SELECT ‘Valor do parâmetro 1: ‘ + CAST(@param1 AS VARCHAR)
SELECT ‘Valor do parâmetro 2 ‘ + @param2

Crie uma procedure que faz uma listagem dos funcionários por
departamento, mas se o departamento não for especificado, ela lista todos
os funcionários
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