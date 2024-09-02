
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
		@TotalProdutos INT;
SET @totalProdutos = (SELECT COUNT(*) FROM Produtos);


WHILE @indice <= @totalProdutos
BEGIN

    SELECT *
	FROM PRODUTOS AS P

	SET @indice = @indice + 1;
END