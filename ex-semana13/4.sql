

--Crie um trigger que registre automaticamente 
--todas as atualizações de livros na tabela LogAtualizacaoLivros 
--com detalhes sobre o livro atualizado, data e hora.

CREATE TABLE LogAtualizacaoLivros (
	isbn VARCHAR(50) PRIMARY KEY,
	titulo VARCHAR(100) NOT NULL,
	ano INT NOT NULL,
	data_mudanca date
);

CREATE TRIGGER registraAtualizacoesLivro
ON LIVRO
AFTER UPDATE
AS
BEGIN
	DECLARE @isbn VARCHAR(50), @titulo VARCHAR(100), @ano int;

	SELECT @isbn = I.isbn, @titulo = I.titulo, @ano = I.ano
	FROM inserted i

	--Inserindo na tabela
	INSERT INTO LogAtualizacaoLivros VALUES
	(@isbn, @titulo, @ano, GETDATE());

	PRINT 'INFOS REGISTRADAS';
END