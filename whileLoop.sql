
DECLARE @valor INT
SET @valor = 0
WHILE @valor<10
	BEGIN
		PRINT 'Número: ' + CAST(@valor AS VARCHAR(2))
		SET @valor = @valor+1
	END