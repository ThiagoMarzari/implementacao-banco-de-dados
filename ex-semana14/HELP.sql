
SELECT * FROM FUNCIONARIO;
SELECT * FROM PROJETO
SELECT * FROM DEPARTAMENTO
SELECT * FROM TRABALHA_EM

SELECT F.Pnome, TE.Pnr
FROM FUNCIONARIO F
JOIN TRABALHA_EM TE ON F.Cpf = TE.Fcpf