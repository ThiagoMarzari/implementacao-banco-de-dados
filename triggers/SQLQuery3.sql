
INSERT FUNCIONARIO(Pnome, Unome, Cpf)
VALUES
('Gustavo', 'Rossato', '11715432121');

SELECT * FROM FUNCIONARIO

--Crie um trigger que não permita a inserção 
--de um funcionário com o mesmo nome completo (Pnome, Minicial, Unome)
ALTER TRIGGER insert_funcionario
ON FUNCIONARIO
INSTEAD OF INSERT
AS
BEGIN
	IF EXISTS (
        SELECT 1 
        FROM FUNCIONARIO f
        JOIN inserted i ON f.Pnome = i.Pnome AND f.Unome = i.Unome
    )

	BEGIN
		PRINT 'Nome completo já existe!';
		ROLLBACK TRANSACTION; --Se eu tivesse utilizado o after o rollback aqui seria obrigatório
	END
	ELSE
	BEGIN
		INSERT INTO FUNCIONARIO (Pnome, Unome, Cpf)
        SELECT Pnome, Unome, Cpf
        FROM inserted; -- Pego os dados da pessoa que insere no insert acima
		PRINT 'Funcionario adicionado com sucesso';
	END
END


--COM AFTER, FICA MAIS CHATO DE FAZER, NÃO COMPENSA 
ALTER TRIGGER trg_after_insert_funcionario
ON FUNCIONARIO
AFTER INSERT
AS
BEGIN
	DECLARE @Pnome VARCHAR(50),
			@Unome VARCHAR(50);

	SELECT @Pnome = I.Pnome , @Unome = I.Unome 
	FROM inserted AS I;

	IF EXISTS (
		SELECT 1
		FROM FUNCIONARIO
		WHERE Pnome = @Pnome AND Unome = @Unome
	)
	BEGIN
		PRINT 'Funcionário já existente!' + @Pnome;
		ROLLBACK TRANSACTION;
	END
	ELSE
	BEGIN
		PRINT 'Funcionário adicionado!';
		COMMIT TRANSACTION;
	END
END