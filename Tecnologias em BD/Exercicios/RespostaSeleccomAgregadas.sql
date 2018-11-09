-- 1
select * from cliente

-- 2
select cliente from cliente

-- 3
select * from produto

-- 4
select produto, valor_unit from produto

-- 5
select * from vendedor

-- 6
select vendedor
from Vendedor
order by vendedor asc

-- 7
select * from vendas

-- 8
select num_venda, data from vendas

-- 9
select * from produto
where unidade = "KG"

-- 10
select * from vendas
where data >= "2013-06-12" and data <= "2013-06-15"

-- 11
SELECT *
FROM vendas
WHERE vendedor = 1

-- 12
select * from vendas
where comprador = 1

-- 13
select * from itens_venda
where num_venda = 3

-- 14
select num_venda, (quantidade * valor_unit) as Total_Item
from itens_venda

-- 15
select * from vendas
order by vendedor desc

select comprador, num_venda from vendas
order by comprador asc, num_venda desc

-- 16
select max(valor_unit) from produto

-- 17
select min(valor_unit) from produto

-- 18
select avg(valor_unit) from produto

-- 19
select count(cod_produto) from produto

-- 20
select sum(valor_unit) from produto

-- 21
select count(num_venda) from vendas
where data = "2013-06-13" and vendedor = 6








