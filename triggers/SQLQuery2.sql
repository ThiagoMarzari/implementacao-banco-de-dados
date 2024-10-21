
CREATE TABLE Log_Funcionario (
LogID INT IDENTITY(1,1) PRIMARY KEY,
Cpf CHAR(11),
Operacao VARCHAR(10),
Data_Hora DATETIME DEFAULT GETDATE()
);

CREATE TRIGGER afterInsertFuncionario
ON FUNCIONARIO
AFTER INSERT
AS
BEGIN
	INSERT INTO Log_Funcionario(Cpf, Operacao, Data_Hora)
	VALUES
	()
END
