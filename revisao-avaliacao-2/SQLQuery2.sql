USE EMPRESA

BEGIN TRANSACTION
-- Tentativa de inserir um novo funcion�rio
INSERT INTO FUNCIONARIO (Pnome, Minicial, Unome, Cpf, Datanasc, Endereco, Sexo, Salario, Cpf_supervisor, Dnr)
VALUES ('Jo�o', 'A', 'Silva', '12345678901', '1990-01-01', 'Rua das Flores, 123', 'M', 5000, NULL, 1);


