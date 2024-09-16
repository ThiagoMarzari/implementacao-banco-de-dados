
/*
Crie uma procedure que calcula um aumento salarial com base em uma porcentagem
fornecida e retorna o novo sal�rio via um par�metro de sa�da. Ela tamb�m deve verificar
se o sal�rio resultante excede um valor m�ximo predefinido (60000)
*/

CREATE PROCEDURE CalculaAumentoSalarial
	@novoSalario DECIMAL(10, 2) OUTPUT, 
	@aumento DECIMAL(10, 2),
	@salario DECIMAL(10, 2)
AS
BEGIN
	IF @salario >= 60000
	BEGIN
		PRINT 'Salario alto dms'
		RETURN
	END

	SET @novoSalario = @salario + @aumento
	RETURN;
END	

DECLARE @s DECIMAL(10, 2) = 15000;
PRINT @s
EXEC CalculaAumentoSalarial @s OUTPUT, 5000, 15000
PRINT @s