
/*

Crie um trigger que limite o n�mero de livros em uma categoria espec�fica 
na tabela Categoria para um m�ximo de 100 livros e 
n�o permita mais inser��es al�m desse limite.
*/

CREATE TRIGGER trg_LimiteNumeroLivros
ON Livro
AFTER INSERT
AS
BEGIN

	DECLARE @CategoriaInserted INT;
	SELECT @CategoriaInserted = I.fk_categoria FROM inserted I;

	IF (SELECT COUNT(*) FROM Livro L WHERE L.fk_categoria = @CategoriaInserted) > 5
	BEGIN
		PRINT 'J� tem mais de 5 livros nessa categoria'
		ROLLBACK;
	END
END


