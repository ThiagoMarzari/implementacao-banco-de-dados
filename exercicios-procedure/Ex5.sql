

--Implmementeuma procedure para listar os livros por autores de uma nacionalidade
--especifica
CREATE PROCEDURE ListaLivrosPorNacionalidade @nacionalidade VARCHAR(50)
AS
BEGIN

	IF NOT EXISTS (SELECT 1 
	FROM Autor AS A 
	WHERE A.nacionalidade = @nacionalidade)
		PRINT 'Digite uma nacionalidade válida'

	SELECT * FROM Livro AS L
	JOIN LivroAutor AS LA ON L.isbn = la.fk_livro
	JOIN Autor AS A ON A.id = LA.fk_autor
	WHERE A.nacionalidade = @nacionalidade;
END

EXEC ListaLivrosPorNacionalidade 'Brasil'