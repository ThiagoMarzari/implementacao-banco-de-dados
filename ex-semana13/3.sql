

--Crie um trigger que exclua automaticamente registros
--da tabela LivroAutor quando o livro correspondente
-- é excluido da tabela  Livro;


CREATE TRIGGER exlcuir_livro_correspondente
ON Livro
AFTER DELETE
AS
BEGIN
	DECLARE @isbn VARCHAR(50);
	SELECT @isbn = D.isbn FROM deleted D; --Pegando o isbn do livro excluido

	DELETE LivroAutor WHERE fk_livro = @isbn;

	DELETE FROM Livro
    WHERE isbn IN (SELECT L.isbn FROM deleted L);

END