

CREATE PROCEDURE InserirNovoAutor 
	@nome VARCHAR(100), 
	@nacionalidade VARCHAR(50)
AS
BEGIN
	INSERT INTO Autor (nome, nacionalidade)
	VALUES
	(@nome, @nacionalidade);
END

EXEC InserirNovoAutor 'Thiago Marzari', 'Brasileiro';

select * from Autor