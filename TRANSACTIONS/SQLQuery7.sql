


BEGIN TRANSACTION

DECLARE @ContaOrigem VARCHAR(24) = 'Richard';
DECLARE @ContaDestino VARCHAR(24) = 'Lucas';
DECLARE @Valor DECIMAL(10, 2) = 150;

IF (SELECT Saldo 
	FROM Conta
	WHERE Nome = @ContaOrigem) >= @Valor
BEGIN
	UPDATE Conta
	SET Saldo = Saldo - @Valor
	WHERE Nome = @ContaOrigem;

	UPDATE Conta
	SET Saldo = Saldo + @Valor
	WHERE Nome = @ContaDestino

	PRINT 'TRANSACAO REALIZADA'
	COMMIT TRANSACTION;
END
ELSE
BEGIN
	PRINT 'SALDO INSUFICIENTE'

	ROLLBACK TRANSACTION;
END

SELECT * FROM Conta

