-- 1
SELECT * FROM Cliente

-- 2
SELECT cliente FROM Cliente

-- 3
SELECT * FROM produto

-- 4
SELECT produto, valor_unit FROM produto

-- 5
SELECT * FROM vendedor

-- 6
SELECT vendedor FROM Vendedor
ORDER BY vendedor ASC

-- 7
SELECT * FROM vendas

-- 8
SELECT num_venda, DATA FROM vendas

-- 9
SELECT * FROM produto
WHERE unidade = 'KG'

-- 10
SELECT DISTINCT unidade FROM produto

-- 11
SELECT * FROM vendas
WHERE DATA >= '2013-06-12' AND DATA <= '2013-06-15'

-- 12
SELECT * FROM vendas
WHERE vendedor = 2

-- 13
SELECT * FROM vendas
WHERE comprador = 1

-- 14
UPDATE produto
	SET unidade = 'KG'
WHERE cod_produto = 1

-- 15
DELETE FROM produto
WHERE cod_produto = 8

-- 16
SELECT * FROM itens_venda
WHERE num_venda = 3

-- 17
SELECT *, (quantidade * valor_unit) AS totalItem FROM itens_venda

-- 18
SELECT * FROM produto
WHERE produto LIKE 'A%'

-- 19
SELECT * FROM cliente
WHERE cliente LIKE '%iv%'

-- 20
SELECT * FROM cliente
WHERE cliente LIKE '%l'

-- 21
SELECT * FROM produto
ORDER BY produto ASC

-- 22
SELECT * FROM vendas
ORDER BY vendedor DESC


















	




 




