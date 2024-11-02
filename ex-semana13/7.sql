
/*
Crie um trigger que registre automaticamente todas as exclusões de livros na tabela 
LogExclusaoLivros com detalhes sobre o livro excluído, data e hora.
*/

CREATE TABLE LogExclusaoLivros (
	log_id INT PRIMARY KEY IDENTITY,
	isbn VARCHAR(50) NOT NULL,
	titulo VARCHAR(100) NOT NULL,
	ano INT NOT NULL,
	fk_editora INT, 
	FOREIGN KEY (fk_editora) REFERENCES Editora(id),
	fk_categoria INT,
	FOREIGN KEY (fk_categoria) REFERENCES Categoria(id),
	data_hora DATETIME

);

CREATE TRIGGER trg_LogExclusaoLivros
ON Livro
AFTER DELETE
AS
BEGIN

	INSERT INTO LogExclusaoLivros (isbn, titulo, ano, fk_editora, fk_categoria, data_hora)
	SELECT D.isbn, D.titulo, D.ano, D.fk_editora, D.fk_categoria, GETDATE()
	FROM deleted D;

END