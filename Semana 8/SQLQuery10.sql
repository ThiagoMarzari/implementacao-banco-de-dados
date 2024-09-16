--Crie uma procedure que retorna a idade de um funcion�rio com base no
--CPF fornecido

ALTER PROCEDURE RetornaIdade
	@idade INT OUTPUT,
	@cpf CHAR(11)
AS
BEGIN
	DECLARE @dataNascimento DATE;
	DECLARE @dataAtual DATE = GETDATE();
	--Obter a data d nascimento do funcionario
	SELECT @dataNascimento = Datanasc
	FROM FUNCIONARIO
	WHERE Cpf = @cpf

	-- Verificar se o cpf foi encontrado
	IF @dataNascimento IS NULL
	BEGIN
		PRINT 'CPF n�o encontrado!'
		SET @idade = NULL;
		RETURN;
	END

	--Calcular idade do funcionario 
	SET @idade = DATEDIFF(YEAR, @dataNascimento, @dataAtual);
	--verificar se o aniversario j� ocorreu
	IF (MONTH(@dataNascimento) > MONTH(@dataAtual) OR 
	MONTH(@dataNascimento) = MONTH(@dataAtual) AND
	DAY(@dataNascimento) > DAY(@dataAtual))
	BEGIN
		SET @idade = @idade - 1; --Reduz um ano se o anivers�rio n�o ocorreu
	END
END

SELECT * FROM FUNCIONARIO
DECLARE @id INT
EXEC RetornaIdade @id OUTPUT, 21065439383
PRINT @id