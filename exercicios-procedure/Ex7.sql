--IMplemente uma procedure para lista autores juntamente com os titulos dos livros que eles escreveram

CREATE PROCEDURE ListarAutoresComLivros
AS
BEGIN
	SELECT A.nome, A.nacionalidade, L.titulo FROM Autor AS A
	JOIN LivroAutor AS LA ON A.id = LA.fk_autor
	JOIN Livro AS L ON L.isbn = LA.fk_livro
END

EXEC ListarAutoresComLivros;