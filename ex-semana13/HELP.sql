

SELECT * FROM Livro;
SELECT * FROM LivroAutor;
SELECT * FROM Categoria;

SELECT * FROM Livro L
JOIN LivroAutor LA
ON LA.fk_livro = L.isbn;

INSERT INTO Livro VALUES ('2532541012', 'Harry Potter e A Pedra', 2001, 1, 2);

DELETE Livro WHERE isbn = '8532511015';