

ALTER PROCEDURE AtualizaSalarioFuncionario (@Cpf VARCHAR(30), @salario DECIMAL(10 ,2))
AS
BEGIN
	IF EXISTS (SELECT 1 FROM FUNCIONARIO AS F
	WHERE @Cpf = F.Cpf)
	BEGIN
		UPDATE FUNCIONARIO
		SET Salario = @salario
		WHERE Cpf = @Cpf

		SELECT * FROM FUNCIONARIO
	END
	ELSE 
		PRINT 'Funcionario não encontrado'
END

select cpf
from FUNCIONARIO

EXEC AtualizaSalarioFuncionario @Cpf = '12345678966', @salario = 123