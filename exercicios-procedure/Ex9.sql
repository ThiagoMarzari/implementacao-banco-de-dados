--Crie uma procedure que liste os livros publicados em um ano especifico
CREATE PROCEDURE ListaLivrosPublicadosEmAno
AS
BEGIN
	SELECT *
	FROM Livro L
	WHERE L.ano = 2000;
END

EXEC ListaLivrosPublicadosEmAno