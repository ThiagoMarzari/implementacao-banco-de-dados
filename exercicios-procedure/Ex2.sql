
CREATE PROCEDURE AtualizarDetalhesLivro
AS
BEGIN
	UPDATE Livro 
	SET titulo = 'O Senhor dos anões', ano = 2002
	WHERE isbn = '9788581742458';
END

EXEC AtualizarDetalhesLivro

SELECT * from Livro