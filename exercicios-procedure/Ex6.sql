--Implmente uma procedure para remover um autor da lista de autores de um livro

CREATE PROCEDURE RemoverAutor @id INT
AS
DELETE FROM LivroAutor WHERE ID = @id;

EXEC RemoverAutor 1
