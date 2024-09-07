
--5. Exercício de Integração - DESAFIO
CREATE PROCEDURE CalcularDesconto
    @precoOriginal DECIMAL(10, 2),
    @qtdComprada INT,
	@precoFinal DECIMAL(10, 2) OUTPUT
AS
BEGIN

	DECLARE @desconto DECIMAL(10, 2);
	DECLARE @contador INT;

	SET @precoFinal = @precoOriginal
    
	IF @qtdComprada > 10
	BEGIN
		SET @desconto = @precoOriginal * 0.10; 
        SET @precoFinal = @precoOriginal - @desconto;
	END
	ELSE IF @qtdComprada < 5
	BEGIN
        SET @contador = 2;
        
        WHILE @contador <= @qtdComprada
        BEGIN
            SET @desconto = @precoFinal * 0.01;
            SET @precoFinal = @precoFinal - @desconto; 
            SET @contador = @contador + 1;
        END	
	END
		
END

DECLARE @Resultado FLOAT;

EXEC CalcularDesconto 12, 2, @precoFinal = @Resultado OUTPUT;

SELECT @Resultado AS MediaCalculada;