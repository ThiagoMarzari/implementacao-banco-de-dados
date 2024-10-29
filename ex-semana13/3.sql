

--Crie um trigger que exclua automaticamente registros
--da tabela LivroAutor quando o livro correspondente
-- é excluido da tabela  Livro;





INSERT INTO Livro VALUES ('2532541012', 'Harry Potter e A Pedra', 2001, 1, 2);

SELECT * FROM Livro;
SELECT * FROM LivroAutor;

DELETE Livro WHERE isbn = '2532541012';