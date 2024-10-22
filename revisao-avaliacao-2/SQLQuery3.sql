-- Implemente uma transação que simule uma compra.
--Verifique o estoque antes de permitir a compra e,
--se o estoque for insuficiente, reverta a transação. 
--Use uma tabela chamada PRODUTO para registrar o estoque dos produtos.

--CREATE TABLE PRODUTO (
--    Id INT PRIMARY KEY,
--    Nome VARCHAR(50),
--    Quantidade INT
--);

--INSERT INTO PRODUTO (Id, Nome, Quantidade) VALUES (1, 'Notebook', 10), (2, 'Mouse', 50);

BEGIN TRANSACTION

DECLARE @produtoId INT = 2;
DECLARE @quantidadeCompra INT = 5;

--Verificar estoque
IF (SELECT Quantidade FROM PRODUTO WHERE ID = @produtoId) >= @quantidadeCompra
BEGIN

	--Diminuindo o estoque do produto
	UPDATE PRODUTO
	SET Quantidade = Quantidade - @quantidadeCompra
	WHERE Id = @produtoId

	PRINT 'Compra realizada com sucesso';

	COMMIT;
END
ELSE 
BEGIN
	PRINT 'Comprar fracassada!';
	ROLLBACK;
END

select * from PRODUTO;