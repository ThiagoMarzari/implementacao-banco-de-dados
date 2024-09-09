CREATE PROCEDURE ListaFuncionarios (
	@valor1 DECIMAL(10, 2),
	@valor2 DECIMAL(10, 2)
	)
AS
BEGIN
	SELECT * 
	FROM FUNCIONARIO AS F
	WHERE F.Salario BETWEEN @valor1 AND @valor2
	ORDER BY F.Salario ASC;
END

EXEC ListaFuncionarios 25000, 35000

