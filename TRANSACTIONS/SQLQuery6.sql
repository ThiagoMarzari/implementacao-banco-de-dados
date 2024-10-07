
--INICIO
BEGIN TRANSACTION

DECLARE @Estoque INT = 0;
DECLARE @Produto VARCHAR(20) = 'Computador';
DECLARE @QtdCompra INT = 4;

SELECT @Estoque = Quantidade
FROM Produto
WHERE Nome = @Produto

UPDATE Produto
SET Quantidade = Quantidade - @QtdCompra
WHERE Nome = @Produto;

IF @Estoque <= @QtdCompra
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

	
