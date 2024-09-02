
DECLARE @valor INT
SET @valor = 0
--Pode ser um select aqui dentro se a condicao é verdadeira
WHILE @valor<10 
	BEGIN
		SET @valor = @valor + 1;
		IF @valor % 2 <> 0
			CONTINUE;
		PRINT 'Número: ' + CAST(@valor AS VARCHAR(2))
	END

-- <> == =