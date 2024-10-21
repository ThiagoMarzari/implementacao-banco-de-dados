
INSERT FUNCIONARIO(Pnome, Unome, Cpf)
VALUES
('Gustavo', 'Rossato', '11715432121');

SELECT * FROM FUNCIONARIO;

--Crie um trigger que não permita a inserção 
--de um funcionário com o mesmo nome completo (Pnome, Minicial, Unome)
--Esse tipo de operação não compensa fazer com o AFTER OF, pois o AFTER OF RODA DEPOIS DO EVENTO ENTÃO FICA MAIS DIFICIL DE CHECAR SE O FUNCIONOARIO JÁ EXISTE
CREATE TRIGGER insert_funcionario
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
		COMMIT TRANSACTION; -- TAMBÉM NÃO É OBRIGATÓRIO
	END
END