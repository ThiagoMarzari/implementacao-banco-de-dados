CREATE VIEW VisaoGeral AS
SELECT L.isbn, L.titulo, L.ano, E.nome, CONCAT(A.nome, A.nacionalidade) AS 'Autor/Nacionalidade', C.tipo_categoria
FROM Livro L, Editora E, Autor A, LivroAutor LA, Categoria C
WHERE L.fk_editora = E.id
AND LA.fk_livro = L.isbn
AND A.id = LA.fk_autor
AND C.id = L.fk_categoria;


SELECT * FROM VisaoGeral ORDER BY titulo;