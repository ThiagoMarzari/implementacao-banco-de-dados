
BEGIN TRANSACTION

DECLARE @Error INT;

INSERT INTO FUNCIONARIO(Pnome, Unome, Cpf)
VALUES ('Thiago', 'Marzari', '45345245372')

SET @Error = @@ERROR;

INSERT INTO DEPARTAMENTO (Dnome, Dnumero, Cpf_gerente, Data_inicio_gerente)
VALUES('Marketing', 1, '98765432400', '2023-09-29')

SET @Error = @Error + @@ERROR;

IF @@ERROR = 0
BEGIN
	ROLLBACK TRANSACTION
	PRINT 'Erro detectado. Transa��o revertida.'
END
ELSE
BEGIN
	COMMIT TRANSACTION
	PRINT 'Transa��o concluida.'
END

select * from FUNCIONARIO