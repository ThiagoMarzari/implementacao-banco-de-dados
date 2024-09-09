CREATE PROCEDURE InserirNovoDepartamento (
	@Dnome VARCHAR(15),
	@Dnumero INT,
	@Cpf_gerente CHAR(11),
	@Data_inicio_gerente date
)
AS
BEGIN
	INSERT INTO DEPARTAMENTO (Dnome, Dnumero, Cpf_gerente, Data_inicio_gerente)
	VALUES (@Dnome, @Dnumero, @Cpf_gerente, @Data_inicio_gerente)
END


EXEC InserirNovoDepartamento 
	@Dnome = 'Escalar',
	@Dnumero = 2, 
	@Cpf_gerente = '12345218966',
	@Data_inicio_gerente = '2004-04-23'


SELECT * FROM DEPARTAMENTO