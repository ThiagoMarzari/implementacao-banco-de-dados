--Crie um procedure para calcular o salário total de todos os funcionários de
--um determinado departamento e retorna o valor por meio de um
--parâmetro de saída.

CREATE PROCEDURE CalcularSalarioTotalPorDepartamento
	@DepartamentoID INT,
	@SalarioTotal DECIMAL(18, 2) OUTPUT
AS
BEGIN

	--Calculando o salario total
	SELECT @SalarioTotal = SUM(Salario)
	FROM FUNCIONARIO AS F
	WHERE F.Dnr = @DepartamentoID

	--Verifica se o departamento possui funcionarios
	IF @SalarioTotal IS NULL
	BEGIN
		SET @SalarioTotal = 0
		PRINT 'Departamento não existe'
	END
END

DECLARE @totalSalario DECIMAL(18, 2)
EXEC CalcularSalarioTotalPorDepartamento 4, @totalSalario
PRINT CAST(@totalSalario AS VARCHAR(100))