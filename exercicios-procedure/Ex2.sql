
CREATE PROCEDURE AtualizarDetalhesLivro
AS
BEGIN
	UPDATE Livro 
	SET titulo = 'O Senhor dos an�es', ano = 2002
	WHERE isbn = '9788581742458';
END

EXEC AtualizarDetalhesLivro

SELECT * from Livro