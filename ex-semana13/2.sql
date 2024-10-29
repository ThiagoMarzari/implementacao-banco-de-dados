
--Crie um trigger que atualize automaticamente o 
--ano de publicação na tabela livro
--para o ano atual quando o livro é inserido.

ALTER TRIGGER atualiza_data_atual_ao_inserir
ON Livro
INSTEAD OF INSERT
AS
BEGIN
	
	DECLARE @dataAtual INT = YEAR(GETDATE());

	INSERT INTO Livro
	SELECT I.isbn, I.titulo, @dataAtual, I.fk_editora, I.fk_categoria 
	FROM inserted I;
	PRINT 'Livro inserido';
END

INSERT INTO Livro VALUES ('2532541012', 'Harry Potter e A Pedra', 2001, 1, 2);

select * from Livro

DELETE Livro WHERE isbn = '2532541012';