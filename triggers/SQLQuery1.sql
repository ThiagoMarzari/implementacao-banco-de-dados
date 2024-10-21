

select * from FUNCIONARIO

-- Primeiro ele insere e depois executa o que est� dentro do trigger --

CREATE TRIGGER olaMundo
ON FUNCIONARIO
AFTER INSERT -- Roda ap�s o c�digo que causou o trigger
AS
PRINT 'Ol� mundo';

INSERT FUNCIONARIO(Pnome, Unome, Cpf)
VALUES
('Rodrigo', 'Rossato', '98765432121');



CREATE TRIGGER olaDenovo
ON FUNCIONARIO
INSTEAD OF INSERT -- substituiu a opera��o que causou o disparo
AS
PRINT 'Ol� de novo!'
