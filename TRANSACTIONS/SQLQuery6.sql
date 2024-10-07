

BEGIN TRANSACTION

DECLARE @Estoque INT = 0;
DECLARE @Produto VARCHAR(20) = 'Processador';

SELECT @Estoque = Quantidade
FROM Produto
WHERE Nome = @Produto

UPDATE Produto
SET Quantidade = Quantidade - 1
WHERE Nome = @Produto;

IF @Estoque <= 0
BEGIN
	ROLLBACK TRANSACTION;
	PRINT 'Estoque insuficiente';
END
ELSE
BEGIN
	COMMIT TRANSACTION;
	PRINT 'EStoque atualizado';
END

select * from Produto

	
