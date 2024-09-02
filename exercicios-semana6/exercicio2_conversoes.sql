
--2.1. CAST
PRINT 'data atual: ' + CAST(GETDATE() AS VARCHAR(10));

--2.2. CONVERT
PRINT CONVERT(INT, 12345.67)

--2.3. Exercício Prático
DECLARE @numeroDecimal DECIMAL(10, 2),
		@numeroInteiro INT;

SET @numeroDecimal = 4.55;
SET @numeroInteiro = 9;

PRINT CAST(@numeroDecimal AS INT)
PRINT CONVERT(INT, @numeroDecimal)

PRINT CAST(@numeroInteiro AS DECIMAL(10, 2))
PRINT CONVERT(DECIMAL(10, 2), @numeroInteiro)


--2.4. Conversão de String para Data
DECLARE @dataNascimento VARCHAR(10) = '15/08/1990'

SELECT CONVERT(datetime, @dataNascimento) AS 'data de nascimento';