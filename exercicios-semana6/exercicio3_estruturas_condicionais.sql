

--3.1. IF / ELSE Básico
DECLARE @Idade INT = 18;

IF @Idade >= 18
	print 'Maior de idade';
ELSE
	print 'Menor de idade';


--3.2. IF / ELSE com Múltiplas Condições
DECLARE @notaFinal INT = 91;

IF @notaFinal >= 90
	PRINT 'Aprovado com Excelência'
ELSE IF @notaFinal >= 70 and @notaFinal < 90
	PRINT 'Aprovado'
ELSE IF @notaFinal >= 50 and @notaFinal < 70
	print 'Em Recuperação';
ELSE
	PRINT  'Reprovado';


--3.3. IF / ELSE com Operadores Lógicos
DECLARE @ano INT = 2008;

IF (@ano % 4 = 0 and @ano % 100 != 0) OR @ano % 100 = 0
	PRINT 'Ano bissexto';
ELSE 
	PRINT 'Ano comum';
