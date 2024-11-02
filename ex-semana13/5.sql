
/*
Crie um trigger que, quando um livro for inserido na tabela Livro, 
verifique se a editora está na lista de editoras proibidas 
e, se estiver, impeça a inserção.
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
		RAISERROR('Inserção impedida, pois a editora esta proibida', 16, 1);
		ROLLBACK;
	END
	ELSE 
	BEGIN
		PRINT 'Inserção concluida';

		INSERT INTO Livro (isbn, titulo, ano, fk_editora, fk_categoria)
		SELECT isbn, titulo, ano, fk_editora, fk_categoria
		FROM inserted 
	END
END