--Crie uma procedure para contar o número de livros em cada categoria

CREATE PROCEDURE ContarNumeroDeLivrosPorCategoria
@categoria VARCHAR(50)
AS
BEGIN
	SELECT COUNT(*) AS 'Número de livros'
	FROM Livro L
	JOIN Categoria C 
	ON C.id = L.fk_categoria
	WHERE C.tipo_categoria = @categoria;
END

EXEC ContarNumeroDeLivrosPorCategoria 'Literatura Juvenil';