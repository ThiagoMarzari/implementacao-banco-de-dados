

SELECT F.Pnome,
		F.Salario,
		CASE
			WHEN Salario < 15000 THEN 'BAIXO'
			WHEN Salario > 15000 AND Salario <= 30000 THEN 'MEDIO'
			ELSE 'ALTO'
		END AS 'Categoria_salario'
FROM FUNCIONARIO AS F;


--encontrar funcionarios admitidos nos ultimos 6 meses

--Testar só com meses, sem utilizar o ano de admissao ou dias
SELECT F.Pnome, 
		F.Data_Admissao,
		CASE
			WHEN DATEDIFF(YEAR, f.Data_Admissao, GETDATE()) = 0 AND
				DATEDIFF(MONTH, F.Data_Admissao, GETDATE()) <= 6
				THEN 'Admitido'
			ELSE 'NAO'
		END AS 'admitido nos últimos 6 meses?'
FROM FUNCIONARIO AS F

--Fazer exercícios
--https://github.com/Herysson/Implementacao-de-Banco-de-Dados/blob/main/Aula%2004%20-%20Vari%C3%A1veis%20-%20Convers%C3%B5es%20-%20If%20Else%20-%20While.md