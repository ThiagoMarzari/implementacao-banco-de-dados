--Crie um trigger que impeça a inserção de livros 
--com o mesmo Titulo na tabela livro.
ALTER TRIGGER impedir_insercao_mesmo_titulo
ON Livro
INSTEAD OF INSERT
AS
BEGIN
	DECLARE @titulo VARCHAR(100);
	SELECT @titulo = I.titulo FROM inserted I;
	
	PRINT @titulo;

	IF EXISTS(SELECT 1 FROM Livro L WHERE L.titulo = @titulo)
	BEGIN
		PRINT 'Titulo ja existe';
		ROLLBACK;
	END
	ELSE
	BEGIN
		--INSERT INTO Livro VALUES ()
		INSERT INTO Livro (isbn, titulo, ano, fk_editora, fk_categoria)
		SELECT isbn, titulo, ano, fk_editora, fk_categoria FROM inserted;

		PRINT 'Livro inserido!';
		COMMIT;
	END
    
END


--

INSERT INTO Livro VALUES ('2532541012', 'Harry Potter e A Pedra', 2001, 1, 2);

select * from Livro

DELETE Livro WHERE isbn = '8532541012';