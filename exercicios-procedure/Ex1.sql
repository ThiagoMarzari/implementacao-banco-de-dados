
--Crie uma procedure que permita inserir uma nova categoria na tabela 'Categoria'
CREATE PROCEDURE InserirNovaCategoria
AS
BEGIN
	INSERT INTO Categoria (tipo_categoria)
	VALUES 
	('Jogos'), ('Videogames'), ('Computadores');
END

EXEC InserirNovaCategoria;

SELECT * FROM Categoria;