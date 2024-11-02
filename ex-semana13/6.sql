/*
Crie um trigger que, quando um livro for atualizado na tabela Livro, 
verifique se o novo título contém a palavra 
"proibido" e, se sim, reverta o título anterior.
*/


CREATE TRIGGER trg_VerificaTituloProibido
ON Livro
AFTER UPDATE
AS
BEGIN

	--Checando se possui a palavra probido
	IF EXISTS (
		SELECT 1
		FROM inserted I 
		WHERE I.titulo LIKE '%proibido%'
	)
	BEGIN
		RAISERROR('Livro com titulo proibido!', 16, 1);
		ROLLBACK;
	END
	ELSE
		BEGIN
			PRINT 'Livro atualizado!';
			COMMIT;
		END
END