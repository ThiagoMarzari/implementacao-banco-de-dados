-- Exibe os dados dos clientes antes da operação
SELECT * FROM Clientes;

-- Inicia a transação
BEGIN TRANSACTION;

-- Declaração das variáveis
DECLARE @idPagador INT = 2;
DECLARE @idRecebedor INT = 1;
DECLARE @valor DECIMAL(10,2) = 200;
DECLARE @saldoPagador DECIMAL(10,2);

-- Verifica o saldo atual do pagador
SELECT @saldoPagador = saldo 
FROM Clientes 
WHERE id_cliente = @idPagador;

-- Verifica se o pagador tem saldo suficiente antes de continuar
IF @saldoPagador >= @valor
BEGIN
    -- Subtrai o valor do saldo do pagador
    UPDATE Clientes
    SET saldo = saldo - @valor
    WHERE id_cliente = @idPagador;
    
    -- Adiciona o valor ao saldo do recebedor
    UPDATE Clientes
    SET saldo = saldo + @valor
    WHERE id_cliente = @idRecebedor;

    -- Se tudo ocorrer bem, confirma a transação
    COMMIT TRANSACTION;
    PRINT 'Transação concluída com sucesso!';
END
ELSE
BEGIN
    -- Se o saldo for insuficiente, desfaz as alterações
    ROLLBACK TRANSACTION;
    PRINT 'Erro: Saldo insuficiente!';
END;

-- Exibe os dados dos clientes após a transação para ver o resultado
SELECT * FROM Clientes;
