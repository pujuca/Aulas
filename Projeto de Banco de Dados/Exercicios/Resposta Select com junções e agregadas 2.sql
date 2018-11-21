-- 1
select cliente
from Cliente

-- 2
select produto, valor_unit
from Produto

-- 3
select vendedor
from Vendedor
order by vendedor asc

-- 4
select num_venda, data
from vendas

-- 5
select *
from produto
where unidade = "KG"

-- 6
select *
from vendas
where data >= '2013-06-12' and data <= '2013-06-15'

-- 7
select *
from vendas
where vendedor = 2

-- 8
select *
from vendas
where comprador = 1

-- 9
select *
from itens_venda
where num_venda = 3

-- 10
select num_venda, produto, (quantidade * valor_unit) as totalItem
from itens_venda

-- 11
select *
from vendas
order by vendedor desc

-- 12
select max(valor_unit)
from produto

-- 13
select min(valor_unit)
from produto

-- 14
select avg(valor_unit)
from produto

-- 15
select count(cod_produto)
from produto

-- 16
select sum(valor_unit)
from produto

-- 17
select count(num_venda)
from vendas
where data = '2013-06-13'


