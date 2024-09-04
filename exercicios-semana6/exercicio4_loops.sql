
--4.1. While Simples
DECLARE @contador INT = 1;

WHILE @contador <= 10
BEGIN
    PRINT 'Contador: ' + CAST(@contador AS VARCHAR);
    SET @contador = @contador + 1;
END

--4.2. While com Condição Complexa
DECLARE @valor INT = 100;

WHILE @valor >= 50
BEGIN
	PRINT 'Valor: ' + CAST(@valor AS VARCHAR);
	SET @valor = @valor - 5;
END

--4.3. Exercício Prático

CREATE TABLE PRODUTOS (
	Id INT PRIMARY KEY IDENTITY(1, 1),
	Nome VARCHAR(50) NOT NULL,
	Preco DECIMAL(10, 2) NOT NULL
);

INSERT INTO PRODUTOS (Nome, Preco) VALUES
('Produto A', 50.00),
('Produto B', 150.00),
('Produto C', 200.00),
('Produto D', 75.00),
('Produto E', 120.00);


DECLARE @indice INT = 1,
		@TotalProdutos INT,
		@precoLimite INT = 100
SET @totalProdutos = (SELECT COUNT(*) FROM Produtos);

DECLARE cursorProdutos CURSOR FOR
	SELECT Nome, Preco FROM PRODUTOS;

OPEN cursorProdutos;

DECLARE @Nome VARCHAR(50);
DECLARE @Preco DECIMAL(10, 2);

FETCH NEXT FROM cursorProdutos INTO @Nome, @Preco;

WHILE @@FETCH_STATUS = 0
WHILE @indice <= @totalProdutos
BEGIN

	IF @Preco > @PrecoLimite
	BEGIN
        PRINT @Nome;
		PRINT @Preco
	END

    FETCH NEXT FROM cursorProdutos INTO @Nome, @Preco;

	SET @indice = @indice + 1;
END

CLOSE cursorProdutos;
DEALLOCATE cursorProdutos;

--4.4. Loop While com Incremento Condicional
DECLARE @numero INT = 2;


WHILE @numero < 1000
BEGIN 
	PRINT @numero
	SET @numero = @numero * 2;
END