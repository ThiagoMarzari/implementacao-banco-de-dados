--Crie uma procedure lista os funcionários cujo salário está entre dois valores
--fornecidos.

CREATE PROCEDURE ListaFuncionarioEntreDoisValores (
	@valorMin DECIMAL(10, 2), @valorMax DECIMAL(10, 2))
AS 
BEGIN
	SELECT *
	FROM FUNCIONARIO AS F
	WHERE F.Salario BETWEEN @valorMin AND @valorMax
END

EXEC ListaFuncionarioEntreDoisValores 25000, 30000