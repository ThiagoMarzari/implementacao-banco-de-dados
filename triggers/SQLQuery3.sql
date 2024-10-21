
INSERT FUNCIONARIO(Pnome, Unome, Cpf)
VALUES
('Juca', 'Rossato', '11755432121');

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
        FROM inserted;
		PRINT 'Funcionario adicionado com sucesso';
	END
END