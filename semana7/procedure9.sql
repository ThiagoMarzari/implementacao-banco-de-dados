


ALTER PROCEDURE ListarFuncionariosPorDepartamento 
	@Depart VARCHAR(30) = ''
AS
BEGIN
	IF (@Depart = '')
	BEGIN
		SELECT * FROM FUNCIONARIO;
		PRINT 'NULL valor'
	END
	ELSE
		SELECT * FROM FUNCIONARIO AS F
		JOIN DEPARTAMENTO as D ON f.Dnr = d.Dnumero
		WHERE D.Dnome = @Depart
END

EXEC ListarFuncionariosPorDepartamento 'Matriz'