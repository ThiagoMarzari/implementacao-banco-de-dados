--Crie uma procedure que receba o nome de 
--uma categoria e retorne todos os livros dentro dessa categoria

CREATE PROCEDURE RetornaLivroCategoria @tipoCategoria VARCHAR(50)
AS
BEGIN
	
	SELECT * 
	FROM LIVRO AS L
	JOIN Categoria AS C
	ON C.id = L.fk_categoria
	WHERE C.tipo_categoria = @tipoCategoria
END

EXEC RetornaLivroCategoria 'Humor'
