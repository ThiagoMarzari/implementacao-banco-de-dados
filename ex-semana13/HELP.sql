

SELECT * FROM Livro;
SELECT * FROM LivroAutor;
SELECT * FROM Editora;
SELECT * FROM Categoria;
SELECT * FROM Autor;

SELECT * FROM Livro L
JOIN LivroAutor LA
ON LA.fk_livro = L.isbn;

INSERT INTO Livro VALUES ('2031541012', 'A pedrinha', 2001, 2, 2);

DELETE Livro WHERE isbn = '2031541012';

UPDATE Livro
SET titulo = 'Juca o PROIBIDO'
WHERE isbn = '2031541012';