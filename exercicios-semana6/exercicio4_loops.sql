
--4.1. While Simples
DECLARE @contador INT = 1;

WHILE @contador <= 10
BEGIN
    PRINT 'Contador: ' + CAST(@contador AS VARCHAR);
    SET @contador = @contador + 1;
END