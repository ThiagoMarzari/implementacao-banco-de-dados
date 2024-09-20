-- Implemente uma procedure para calcular o ano médio de publicacao de livros em uma categoria especifica

CREATE PROCEDURE CalcularAnoMedioPublicacao @categoria VARCHAR(50)
AS
BEGIN
	SELECT 
		AVG(L.ano) AS 'Ano médio de publicacao', 
		c.tipo_categoria 
	FROM Livro L
	JOIN Categoria C ON C.id = L.fk_categoria
	WHERE C.tipo_categoria = @categoria
	GROUP BY C.tipo_categoria
END

EXEC CalcularAnoMedioPublicacao 'Literatura Juvenil'
