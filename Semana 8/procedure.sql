

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
	IF EXISTS (SELECT 1 
		FROM FUNCIONARIO 
		WHERE @Pnome = Pnome 
		AND @Minicial = Minicial
		AND @Unome = Unome)
		BEGIN
			PRINT 'ESse funcionario ja existe'
			RETURN
		END
	
		--Se não existir ainda
		INSERT INTO FUNCIONARIO (Pnome, Minicial, Unome, Cpf, Datanasc, Endereco,
		Sexo, Salario, Cpf_supervisor, Dnr)
		VALUES (@Pnome, @Minicial, @Unome, @Cpf, @Datanasc, @Endereco,
		@Sexo, @Salario, @Cpf_supervisor, @Dnr)
		PRINT 'Funcionario inserido com sucesso'
END

EXEC InserirNovoFuncionario 
	@Pnome = 'Alice',
	@Minicial = 'M',
	@Unome = 'Rossato',
	@Cpf = '21061499383',
	@Datanasc = '2002-09-25',
	@Endereco = 'Rua tal',
	@Sexo = 'M',
	@Salario = 23414,
	@Cpf_supervisor = '21765439300',
	@Dnr = 4


select * from FUNCIONARIO