
CREATE PROCEDURE teste (@par1 INT OUTPUT)
AS
SELECT @par1*2 AS 'teste'
RETURN

DECLARE @valor INT = 15
PRINT @valor
EXEC teste @valor 
PRINT @valor