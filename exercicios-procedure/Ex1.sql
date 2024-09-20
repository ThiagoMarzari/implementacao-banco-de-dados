

ALTER PROCEDURE InserirNovaCategoria
AS
BEGIN
	INSERT INTO Categoria (Id, Nome)
	VALUES 
	(1, 'Jogos'), (2, 'Celulares'), (3, 'Videogames');
END

EXEC InserirNovaCategoria;

SELECT * FROM Categoria;