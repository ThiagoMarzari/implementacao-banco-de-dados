CREATE PROCEDURE InserirNovo (
	@Dnome VARCHAR(15),
	@Dnumero INT,
	@Cpf_gerente CHAR(11),
	@Data_inicio_gerente date,
	@Pnome VARCHAR(15),
	@Minicial CHAR(1),
	@Unome VARCHAR(15),
	@Cpf CHAR(11),
	@Datanasc date,
	@Endereco VARCHAR(255),
	@Sexo CHAR(1),
	@Salario DECIMAL(10, 2),
	@Cpf_supervisor CHAR(11),
	@Dnr INT,
	@Bonus DECIMAL(10, 2),
	@Data_Admissao date
)
AS
BEGIN
	INSERT INTO FUNCIONARIO (Pnome, Minicial, Unome, Cpf, Datanasc, Endereco,
	Sexo, Salario, Cpf_supervisor, Dnr, Bonus, Data_Admissao)
	VALUES (@Pnome, @Minicial, @Unome, @Cpf, @Datanasc, @Endereco,
	@Sexo, @Salario, @Cpf_supervisor, @Dnr, @Bonus, @Data_Admissao)

	INSERT INTO DEPARTAMENTO (Dnome, Dnumero, Cpf_gerente, Data_inicio_gerente)
	VALUES (@Dnome, @Dnumero, @Cpf_gerente, @Data_inicio_gerente)

END

EXEC InserirNovo 
	@Dnome = 'TI',
	@Dnumero = 72,
	@Cpf_gerente = '21765439300',
	@Data_inicio_gerente = '2004-2-11',
	@Pnome = 'Thiago',
	@Minicial = 'M',
	@Unome = 'Rossato',
	@Cpf = '21765439300',
	@Datanasc = '2002-09-25',
	@Endereco = 'Rua tal',
	@Sexo = 'M',
	@Salario = 23414,
	@Cpf_supervisor = '21765439300',
	@Dnr = 72,
	@Bonus = 2333,
	@Data_Admissao = '2007-04-21'


select * from FUNCIONARIO