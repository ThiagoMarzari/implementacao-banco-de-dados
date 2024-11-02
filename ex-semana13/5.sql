
/*
Crie um trigger que, quando um livro for inserido na tabela Livro, 
verifique se a editora est� na lista de editoras proibidas 
e, se estiver, impe�a a inser��o.
*/

CREATE TABLE EditorasProibidas (
	fk_editora int not null,
	FOREIGN KEY (fk_editora) REFERENCES Editora(id)
)

ALTER TRIGGER trg_VerificarEditoraProibida
ON Livro
INSTEAD OF INSERT
AS
BEGIN
	DECLARE @editoraID INT;

	SELECT @editoraID = I.fk_editora
	FROM inserted I;

	PRINT @editoraID

	IF EXISTS (
		SELECT 1 FROM Editora E
		JOIN EditorasProibidas EP 
		ON @editoraID = EP.fk_editora
	)
	BEGIN
		RAISERROR('Inser��o impedida, pois a editora esta proibida', 16, 1);
		ROLLBACK;
	END
	ELSE 
	BEGIN
		PRINT 'Inser��o concluida';

		INSERT INTO Livro (isbn, titulo, ano, fk_editora, fk_categoria)
		SELECT isbn, titulo, ano, fk_editora, fk_categoria
		FROM inserted 
	END
END