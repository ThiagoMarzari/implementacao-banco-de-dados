
DECLARE @valor INT
SET @valor = 0
--Pode ser um select aqui dentro se a condicao � verdadeira
WHILE @valor<10 
	BEGIN
		SET @valor = @valor + 1;
		IF @valor % 2 <> 0
			CONTINUE;
		PRINT 'N�mero: ' + CAST(@valor AS VARCHAR(2))
	END

-- <> == =