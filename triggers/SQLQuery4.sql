

/*
Crie um trigger que seja disparado em vez de uma
inserção na tabela FUNCIONARIO. Este trigger deve
verificar se o salário do novo funcionário é maior ou
igual a R$ 1.000,00. Se for, a inserção deve ocorrer
normalmente. Caso contrário, a inserção deve ser
cancelada e uma mensagem de erro deve ser exibida,
impedindo que funcionários com salários abaixo desse
valor sejam adicionados ao banco de dados.
*/

INSERT FUNCIONARIO(Pnome, Unome, Cpf, Salario)
VALUES
('Thiago', 'Rossato', '41215432121', 3000);

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
		COMMIT TRANSACTION; --NÃO É OBRIGATÓRIO
	END
	ELSE
	BEGIN
		PRINT 'Salario abaixo ' + CONVERT(VARCHAR(10), @novoSalario);
		ROLLBACK TRANSACTION;
	END
END