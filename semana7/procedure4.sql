
ALTER procedure Funcionarios @nomeDepartamento VARCHAR(10)
AS
BEGIN
	SELECT F.Pnome, D.Dnome
	FROM FUNCIONARIO AS F
	JOIN DEPARTAMENTO AS D 
	ON F.Dnr = D.Dnumero
	WHERE D.Dnome = @nomeDepartamento
END

EXEC Funcionarios @NomeDepartamento = 'Matriz'