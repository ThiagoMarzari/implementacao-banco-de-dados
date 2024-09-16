

ALTER PROCEDURE InserirNovoFuncionario (
	@Pnome VARCHAR(15),
	@Minicial CHAR(1),
	@Unome VARCHAR(15),
	@Cpf CHAR(11),
	@Datanasc date,
	@Endereco VARCHAR(255),
	@Sexo CHAR(1),
	@Salario DECIMAL(10, 2),
	@Cpf_supervisor CHAR(11),
	@Dnr INT
)
AS
BEGIN
	IF EXISTS (SELECT F.Pnome FROM FUNCIONARIO AS F WHERE @Pnome != f.Pnome)
	INSERT INTO FUNCIONARIO (Pnome, Minicial, Unome, Cpf, Datanasc, Endereco,
	Sexo, Salario, Cpf_supervisor, Dnr)
	VALUES (@Pnome, @Minicial, @Unome, @Cpf, @Datanasc, @Endereco,
	@Sexo, @Salario, @Cpf_supervisor, @Dnr)

END

EXEC InserirNovoFuncionario 
	@Pnome = 'Thiago',
	@Minicial = 'M',
	@Unome = 'Rossato',
	@Cpf = '21765439300',
	@Datanasc = '2002-09-25',
	@Endereco = 'Rua tal',
	@Sexo = 'M',
	@Salario = 23414,
	@Cpf_supervisor = '21765439300',
	@Dnr = 72


select * from FUNCIONARIO