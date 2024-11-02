
/*

Crie um trigger que limite o número de livros em uma categoria específica 
na tabela Categoria para um máximo de 100 livros e 
não permita mais inserções além desse limite.
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
		PRINT 'Já tem mais de 5 livros nessa categoria'
		ROLLBACK;
	END
END


