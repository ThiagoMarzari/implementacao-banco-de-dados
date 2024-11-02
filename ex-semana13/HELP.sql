

SELECT * FROM Livro;
SELECT * FROM Categoria;
SELECT * FROM LivroAutor;
SELECT * FROM Editora;
SELECT * FROM Autor;

SELECT COUNT(*)
FROM Livro
WHERE fk_categoria = 1



SELECT * FROM Livro L
JOIN LivroAutor LA
ON LA.fk_livro = L.isbn;

INSERT INTO Livro VALUES ('1231541012', 'O juquinha', 2001, 2, 1);

DELETE Livro WHERE isbn = '8532511015';

UPDATE Livro
SET isbn = '1081121012'
WHERE isbn = '1031541012';

