--Funcionários Acima da Média Salarial: 
--Liste todos os funcionários que ganham mais do
--que a média salarial do departamento em que trabalham.

SELECT *
FROM FUNCIONARIO F
WHERE F.Salario > (SELECT AVG(Salario) FROM FUNCIONARIO F2 WHERE F2.Dnr = F.Dnr)


--Projetos Com Mais de 5 Funcionários: 
--Liste os nomes dos projetos que têm mais de 3 funcionários alocados

SELECT P.Projnome, COUNT(TE.Fcpf) AS NumeroFuncionarios
FROM PROJETO P 
JOIN TRABALHA_EM TE 
ON TE.Pnr = P.Projnumero
GROUP BY P.Projnome
HAVING COUNT(P.Projnome) > 2


--Média de Salário por Departamento: 
--Liste os departamentos onde a média salarial é maior que a média geral da empresa. 
--Utilize uma subconsulta para calcular a média geral e compare com a média por departamento.

SELECT  F.Dnr, AVG(F.Salario) AS MediaSalarialDepartamento
FROM FUNCIONARIO F
GROUP BY F.Dnr
HAVING AVG(F.Salario) > (SELECT AVG(Salario) FROM FUNCIONARIO)
