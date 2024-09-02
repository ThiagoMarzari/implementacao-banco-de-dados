--1. Variáveis no SQL Server

--1.1. Declaração de Variáveis

DECLARE @nome_produto VARCHAR(50), 
		@quantidade_estoque INT,
		@preco_produto DECIMAL(10, 2);


--1.2. Atribuição de Valores
SET @nome_produto = 'Notebook';
SET @quantidade_estoque = 15;
SET @preco_produto = 2999.99;

--1.3. Exibição de Valores
PRINT @nome_produto;
PRINT @quantidade_estoque;
PRINT @preco_produto;


--1.4. Cálculo utilizando Variáveis
DECLARE @salarioBase DECIMAL(10, 2),
		@bonus DECIMAL(10, 2),
		@salarioTotal DECIMAL(10, 2);

SET @salarioBase = 5000.00;
SET @bonus = 800.00;
SET @salarioTotal = @salarioBase + @bonus;

PRINT @salarioTotal;
