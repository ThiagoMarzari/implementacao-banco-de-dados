

--3.1. IF / ELSE B�sico
DECLARE @Idade INT = 18;

IF @Idade >= 18
	print 'Maior de idade';
ELSE
	print 'Menor de idade';


--3.2. IF / ELSE com M�ltiplas Condi��es
DECLARE @notaFinal INT = 91;

IF @notaFinal >= 90
	PRINT 'Aprovado com Excel�ncia'
ELSE IF @notaFinal >= 70 and @notaFinal < 90
	PRINT 'Aprovado'
ELSE IF @notaFinal >= 50 and @notaFinal < 70
	print 'Em Recupera��o';
ELSE
	PRINT  'Reprovado';


--3.3. IF / ELSE com Operadores L�gicos
DECLARE @ano INT = 2008;

IF (@ano % 4 = 0 and @ano % 100 != 0) OR @ano % 100 = 0
	PRINT 'Ano bissexto';
ELSE 
	PRINT 'Ano comum';
