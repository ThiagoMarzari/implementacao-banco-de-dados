
--View de Funcion�rios Sem Supervisores: 
--Crie uma view que liste todos os funcion�rios que n�o possuem supervisores.
--Utilize a coluna Cpf_supervisor para verificar quais funcion�rios n�o t�m supervisores.

CREATE VIEW ListaFuncionariosSemSupervisor AS
SELECT F.Pnome, F.Minicial, F.Unome, F.Sexo, F.Dnr
FROM FUNCIONARIO F
WHERE F.Cpf_supervisor IS NULL


SELECT * FROM ListaFuncionariosSemSupervisor

--View de Sal�rios por Departamento: 
--Crie uma view que exiba a m�dia salarial por departamento.

CREATE VIEW SalarioPorDepartamento AS
SELECT AVG(F.Salario) AS 'M�dia salarial', f.Dnr
FROM FUNCIONARIO F
GROUP BY F.Dnr



--3- --View de Projetos Ativos: 
--Crie uma view que liste os projetos ativos, ou seja, aqueles que est�o em andamento.




--Funcion�rios com Alto Desempenho: 
--Crie uma view que liste os funcion�rios que participaram de mais de 3 
--projetos no total. Inclua as colunas de nome, CPF e o n�mero de projetos em que o funcion�rio participou.

CREATE VIEW FuncionariosAltoDesempenho AS
SELECT F.Pnome, F.Unome, F.Cpf, COUNT(*) AS 'Projetos participados'
FROM FUNCIONARIO F
JOIN TRABALHA_EM TE ON F.Cpf = TE.Fcpf
GROUP BY F.Pnome, F.Unome, F.Cpf
HAVING COUNT(*) > 3
SELECT * FROM FuncionariosAltoDesempenho





--Funcion�rios Perto da Aposentadoria: Crie uma view que liste os funcion�rios 
--que est�o a menos de 5 anos de se aposentar (assumindo que a idade de aposentadoria seja 65 anos). 
--Inclua nome, CPF e o n�mero de anos restantes para a aposentadoria.

CREATE VIEW FuncionariosQuaseAposentados AS
SELECT
	F.Pnome,
	F.Unome,
	F.Cpf,
	65 - DATEDIFF(YEAR, F.Datanasc, GETDATE()) AS 'Anos restantes'
FROM FUNCIONARIO F
WHERE 65 - DATEDIFF(YEAR, F.Datanasc, GETDATE()) <= 5;

