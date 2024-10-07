BEGIN TRANSACTION

DECLARE @Erro INT;
	
INSERT INTO FUNCIONARIO (Pnome, Minicial, Unome, cpf, Datanasc, Endereco, 
Sexo, Salario, Cpf_supervisor, Dnr)
VALUES ('Carlitos', 'R', 'Almeida', '11944515582', '1991-07-02', 'av. Brasil, 500', 'M',
4500, NULL, 1);

SET @Erro = @@ERROR;

INSERT INTO FUNCIONARIO (Pnome, Minicial, Unome, cpf, Datanasc, Endereco, 
Sexo, Salario, Cpf_supervisor, Dnr)
VALUES ('Juca', 'R', 'Almeida', '27944515582', '1991-07-02', 'av. Brasil, 500', 'M',
4500, NULL, 1);

SET @Erro = @Erro + @@ERROR;

IF @Erro <> 0
BEGIN
	ROLLBACK TRANSACTION;
	PRINT 'Erro detectado. Transação revertida'
END
ELSE
BEGIN
	COMMIT TRANSACTION;
	PRINT 'Transação concluida com sucesso!'
END

SELECT * FROM FUNCIONARIO