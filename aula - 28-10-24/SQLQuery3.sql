--Outra forma de criação de restrições CONSTRAINT
CREATE TABLE tbl_produtos
(	
	id_produto INT PRIMARY KEY,
	nome_produto VARCHAR(50),
	categoria VARCHAR(25)
);
CREATE TABLE tbl_inventario
(
	id_inventario INT PRIMARY KEY,
	fk_id_produto INT DEFAULT 100, -- Valor padrão para o fk_id_produto
	quantidade INT,
	min_level INT,
	max_level INT,
	CONSTRAINT fk_inv_produto -- constraint é uma restrição
		FOREIGN KEY (fk_id_produto)
		REFERENCES tbl_produtos (id_produto)
		ON DELETE CASCADE
);

--Inserindo registroro nas tabelas acima (Distribuidora de bebidas)
INSERT INTO  [dbo].[tbl_produtos] VALUES (1, 'Refrigerante','Bebidas');
INSERT INTO  [dbo].[tbl_produtos] VALUES (2, 'Cerveja','Bebidas');
INSERT INTO  [dbo].[tbl_produtos] VALUES (3, 'Tequila','Bebidas');
INSERT INTO  [dbo].[tbl_produtos] VALUES (4, 'Energético','Bebidas');

INSERT INTO [dbo].[tbl_inventario] VALUES (1,1,500,10,1000);
INSERT INTO [dbo].[tbl_inventario] VALUES (2,4,50,5,50);
INSERT INTO [dbo].[tbl_inventario] VALUES (3,2,1000,5,5000);
INSERT INTO [dbo].[tbl_inventario] VALUES (4,3,5,5,15);

SELECT * FROM tbl_produtos;
SELECT * FROM tbl_inventario;

SELECT P.nome_produto, P.categoria, I.quantidade, I.min_level, I.max_level FROM tbl_produtos P
JOIN tbl_inventario I ON I.fk_id_produto = P.id_produto
ORDER BY P.nome_produto;

DELETE FROM tbl_produtos WHERE id_produto = 1;

ALTER TABLE tbl_inventario DROP CONSTRAINT fk_inv_produto; -- Remover constraint da tabela inventario 

UPDATE tbl_produtos 
SET id_produto = 99
WHERE id_produto = 3;

SELECT * FROM tbl_inventario

ALTER TABLE tbl_inventario 
WITH CHECK ADD CONSTRAINT fk_inv_produto
FOREIGN KEY (fk_id_produto)
REFERENCES tbl_produtos(id_produto)
ON UPDATE CASCADE 
ON DELETE SET NULL;

