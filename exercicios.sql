

SELECT F.Pnome,
		F.Salario,
		CASE
			WHEN Salario < 15000 THEN 'BAIXO'
			WHEN Salario > 15000 AND Salario <= 30000 THEN 'MEDIO'
			ELSE 'ALTO'
		END AS 'Categoria_salario'
FROM FUNCIONARIO AS F;