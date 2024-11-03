--Funcion�rios Acima da M�dia Salarial: 
--Liste todos os funcion�rios que ganham mais do
--que a m�dia salarial do departamento em que trabalham.

SELECT *
FROM FUNCIONARIO F
WHERE F.Salario > (SELECT AVG(Salario) FROM FUNCIONARIO F2 WHERE F2.Dnr = F.Dnr)


--Projetos Com Mais de 5 Funcion�rios: 
--Liste os nomes dos projetos que t�m mais de 3 funcion�rios alocados

SELECT P.Projnome, COUNT(TE.Fcpf) AS NumeroFuncionarios
FROM PROJETO P 
JOIN TRABALHA_EM TE 
ON TE.Pnr = P.Projnumero
GROUP BY P.Projnome
HAVING COUNT(P.Projnome) > 2


--M�dia de Sal�rio por Departamento: 
--Liste os departamentos onde a m�dia salarial � maior que a m�dia geral da empresa. 
--Utilize uma subconsulta para calcular a m�dia geral e compare com a m�dia por departamento.

SELECT  F.Dnr, AVG(F.Salario) AS MediaSalarialDepartamento
FROM FUNCIONARIO F
GROUP BY F.Dnr
HAVING AVG(F.Salario) > (SELECT AVG(Salario) FROM FUNCIONARIO)
