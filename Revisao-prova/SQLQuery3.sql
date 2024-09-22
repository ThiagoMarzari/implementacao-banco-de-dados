

DECLARE @NomeFuncionario VARCHAR(20), @Idade INT;

SET @NomeFuncionario = 'Jennifer';

SELECT @Idade = DATEDIFF(YEAR, Datanasc, GETDATE()) 
	FROM FUNCIONARIO 
	WHERE Pnome = @NomeFuncionario

IF @Idade >= 60
	PRINT @NomeFuncionario + ' est� pr�ximo(a) da aposentadoria.';
ELSE
	PRINT @NomeFuncionario + ' ainda tem tempo at� a aposentadoria.';


DECLARE @Bonus DECIMAL(10, 2)

SELECT @Bonus = Bonus
	FROM FUNCIONARIO 
	WHERE Pnome = 'Jo�o';

IF @Bonus IS NOT NULL AND @Bonus > 0
	PRINT 'Recebeu Bonus';
ELSE
	PRINT 'N�o recebeu bonus'


DECLARE @Valor INT
SET @Valor = 0

WHILE @Valor < 10
	BEGIN
		PRINT 'N�mero: ' + CAST(@Valor AS VARCHAR(2))
		SET @Valor = @Valor + 1;
	END

SELECT * FROM FUNCIONARIO