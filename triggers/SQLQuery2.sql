
CREATE TABLE Log_Funcionario (
LogID INT IDENTITY(1,1) PRIMARY KEY,
Cpf CHAR(11),
Operacao VARCHAR(10),
Data_Hora DATETIME DEFAULT GETDATE()
);

CREATE TRIGGER logInsertFuncionario
ON FUNCIONARIO
AFTER INSERT
AS
BEGIN
	INSERT INTO Log_Funcionario(Cpf, Operacao)
	SELECT Cpf, 'INSERT' 
	FROM inserted
END

INSERT FUNCIONARIO(Pnome, Unome, Cpf)
VALUES
('Paulo', 'Rossato', '91765432121');

select * from Log_Funcionario