

--SELECT DISTINCT F.Pnome,F.Salario
--FROM FUNCIONARIO AS F

--SELECT *
--FROM FUNCIONARIO
--WHERE Pnome = 'Jo�o'


--SELECT *
--FROM FUNCIONARIO AS F
--WHERE F.Sexo = 'M' AND F.Salario >= 30000 

SELECT * 
FROM FUNCIONARIO
WHERE Endereco LIKE '%S�o Paulo%'
OR Endereco LIKE '%Curitiba%';

SELECT * 
FROM FUNCIONARIO F
WHERE NOT F.Endereco LIKE '%S�o Paulo%'

SELECT * 
FROM FUNCIONARIO AS F
ORDER BY F.Salario DESC

SELECT * 
FROM FUNCIONARIO AS F
WHERE F.Cpf_supervisor NULL;

SELECT *
FROM FUNCIONARIO
WHERE Cpf_supervisor IS NOT NULL;

SELECT MIN(Salario)
FROM FUNCIONARIO

SELECT MAX(Salario)
FROM FUNCIONARIO

SELECT COUNT(Cpf)
FROM FUNCIONARIO

DECLARE @salarioAvg DECIMAL(10, 2)
SET @salarioAvg = (SELECT AVG(Salario) 
	FROM FUNCIONARIO)

PRINT @salarioAvg

DECLARE @salarioSum DECIMAL(10, 2)
SET @salarioSum = (SELECT SUM(Salario)
	FROM FUNCIONARIO)

PRINT 'Salario total: ' + CAST(@salarioSum AS VARCHAR(10));

SELECT *
FROM FUNCIONARIO
WHERE Salario IN (25000, 30000)
ORDER BY Salario ASC

SELECT *
FROM FUNCIONARIO AS F
WHERE F.Dnr = 5
AND Salario BETWEEN 30000 AND 40000


SELECT * FROM FUNCIONARIO

