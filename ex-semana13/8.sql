
/*

Crie um trigger que atualize automaticamente o campo nacionalidade na tabela 
Autor para 'Desconhecida' sempre que um autor for excluído da tabela Autor
*/

CREATE TRIGGER trg_AutorNacionalidadeDesconhecida
ON Autor
INSTEAD OF DELETE
AS
BEGIN

	DECLARE @idDeleted INT;
	SELECT @idDeleted = id FROM deleted 

	UPDATE Autor
	SET nacionalidade = 'Desconhecida'
	WHERE id = @idDeleted
END
