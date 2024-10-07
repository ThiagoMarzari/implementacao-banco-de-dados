BEGIN TRANSACTION
DECLARE @Departamento INT = 4;

--ATUALIZAR SALARIO
UPDATE FUNCIONARIO
SET Salario = Salario * 1.2
WHERE Dnr = @Departamento;

IF @@ERROR <> 0
BEGIN
	ROLLBACK TRANSACTION;
	PRINT 'Erro detectado! transação revertida'
END
ELSE
BEGIN
	COMMIT TRANSACTION;
	PRINT 'Salário atualizado com sucesso!';
END

select * from FUNCIONARIO