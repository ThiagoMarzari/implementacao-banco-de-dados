--COmandos básicos

--DELETE
DELETE PRODUTOS 
WHERE Id = 2

SELECT * FROM PRODUTOS

--Insert
INSERT INTO PRODUTOS(Nome, Preco)
VALUES ('Produto tal', 20), ('Juca produto', 10);

--Update
UPDATE PRODUTOS
SET Nome = 'Produto do juca'
WHERE Id = 7;

-- Consulta
SELECT * FROM PRODUTOS