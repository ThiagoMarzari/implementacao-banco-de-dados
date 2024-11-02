
/*
	Crie um trigger que restrinja a atualização do ISBN na tabela Livro para impedir que ele seja alterado.
*/

CREATE TRIGGER trg_restringeAtualizacaoLivroPorISBN
ON Livro
AFTER UPDATE
AS
BEGIN
	
	DECLARE @oldIsbn VARCHAR(50);
	SELECT @oldIsbn = I.isbn 
	FROM inserted I;

	IF EXISTS (SELECT * 
		FROM Livro
		WHERE isbn != @oldIsbn
	)
	BEGIN
		PRINT 'Nao pode alterar o ISBN';
		ROLLBACK;
	END
END