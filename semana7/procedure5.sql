

ALTER PROCEDURE AtualizaSalarioFuncionario (@Cpf VARCHAR(30), @salario INT)
AS
BEGIN
	IF EXISTS (SELECT * FROM FUNCIONARIO AS F
	WHERE @Cpf = F.Cpf)
	BEGIN
		UPDATE FUNCIONARIO
		SET Salario = @salario
		WHERE Cpf = @Cpf

		SELECT * FROM FUNCIONARIO
	END
	ELSE 
		PRINT 'nao existe'
END

select cpf
from FUNCIONARIO

EXEC AtualizaSalarioFuncionario @Cpf = '12345678966', @salario = 123