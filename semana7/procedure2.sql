CREATE PROCEDURE Funcionarios
AS
BEGIN
	SELECT f.Pnome, f.Unome, d.Dnome
	FROM FUNCIONARIO AS f, DEPARTAMENTO as d
	WHERE f.Dnr = d.Dnumero
	ORDER BY D.Dnome

END

EXEC Funcionarios

ALTER procedure Funcionarios @nomeDepartamento
AS
BEGIN
	SELECT F.Pnome
	FROM FUNCIONARIO AS F
	JOIN DEPARTAMENTO AS D 
	ON F.Dnr = D.Dnumero
END