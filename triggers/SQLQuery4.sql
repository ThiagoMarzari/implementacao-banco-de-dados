

/*
Crie um trigger que seja disparado em vez de uma
inser��o na tabela FUNCIONARIO. Este trigger deve
verificar se o sal�rio do novo funcion�rio � maior ou
igual a R$ 1.000,00. Se for, a inser��o deve ocorrer
normalmente. Caso contr�rio, a inser��o deve ser
cancelada e uma mensagem de erro deve ser exibida,
impedindo que funcion�rios com sal�rios abaixo desse
valor sejam adicionados ao banco de dados.
*/

--Inserindo novo funcionario
INSERT FUNCIONARIO(Pnome, Unome, Cpf, Salario)
VALUES
('Thiago', 'Rossato', '41115432121', 300);

select * from FUNCIONARIO

ALTER TRIGGER trg_salario
ON FUNCIONARIO
AFTER INSERT
AS
BEGIN
	DECLARE @novoSalario DECIMAL(10, 2);
	SELECT @novoSalario = i.Salario FROM inserted i;
	
	IF @novoSalario >= 1000
	BEGIN
		PRINT 'Funcionario inserido!';
		COMMIT TRANSACTION; --N�O � OBRIGAT�RIO
	END
	ELSE
	BEGIN
		RAISERROR('O sal�rio n�o pode ser menor que R$ 1.000,00', 16, 1);
		ROLLBACK TRANSACTION;
	END
END