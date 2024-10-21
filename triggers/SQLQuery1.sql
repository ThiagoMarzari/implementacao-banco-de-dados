

select * from FUNCIONARIO

-- Primeiro ele insere e depois executa o que está dentro do trigger --

CREATE TRIGGER olaMundo
ON FUNCIONARIO
AFTER INSERT -- Roda após o cõdigo que causou o trigger
AS
PRINT 'Olá mundo';

INSERT FUNCIONARIO(Pnome, Unome, Cpf)
VALUES
('Rodrigo', 'Rossato', '98765432121');



CREATE TRIGGER olaDenovo
ON FUNCIONARIO
INSTEAD OF INSERT -- substituiu a operação que causou o disparo
AS
PRINT 'Olá de novo!'
