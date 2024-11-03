
-- Implemente uma transa��o que simule a transfer�ncia de fundos entre duas contas banc�rias. 
--Se o saldo da conta de origem for insuficiente, a transa��o deve ser revertida.

-- Cria��o da tabela de contas
CREATE TABLE CONTA (
    ContaId INT PRIMARY KEY,
    Nome VARCHAR(50),
    Saldo DECIMAL(10, 2)
);

-- Exemplo de inser��o de contas
INSERT INTO CONTA (ContaId, Nome, Saldo) VALUES (1, 'Jo�o', 1000.00), (2, 'Maria', 500.00);

select * from conta

BEGIN TRANSACTION

DECLARE @contaOrigem INT = 2, @contaDestino INT = 1, @valor DECIMAL(10, 2) = 200.0;

IF (SELECT Saldo FROM CONTA WHERE ContaId = @contaOrigem) >= @valor
BEGIN

	-- SUBTRAIR DINHEIRO DA CONTA DE ORIGEM
	UPDATE CONTA
	SET Saldo = Saldo - @valor
	WHERE ContaId = @contaOrigem

	UPDATE CONTA
	SET Saldo = Saldo + @valor
	WHERE ContaId = @contaDestino;
	
	PRINT 'Transferencia realizada com suceso';
	COMMIT;
END
ELSE
BEGIN
	PRINT 'Erro ao transferir';
	ROLLBACK;
END

SELECT * FROM CONTA