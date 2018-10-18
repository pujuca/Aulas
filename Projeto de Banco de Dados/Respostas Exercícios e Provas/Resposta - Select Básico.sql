-- 1
select * 
from cliente

-- 2
select cliente 
from Cliente

-- 3
select *
from produto

-- 4
select produto, valor_unit
from Produto

-- 5
select *
from vendedor

-- 6
select vendedor
from Vendedor
order by vendedor ASC

-- 7
select *
from vendas

-- 8
select num_venda, data
from vendas

-- 9
select *
from produto
where unidade = "KG"

-- 10
select *
from vendas
where data >= "2013-06-12" and data <= "2013-06-15"

-- 11
select *
from vendas
where vendedor = 2

-- 12
select *
from vendas
where comprador = 1

-- 13
update produto
	set unidade = "KG"
where produto = "Arroz"

-- 14
delete from produto
where produto = "Azeite"

-- 15
select *
from itens_venda
where num_venda = 3

-- 16
select num_venda, produto, (quantidade * valor_unit) AS total_item 
from itens_venda

-- 17
alter table vendas
add total numeric(9,2)

-- 18
select (quantidade * valor_unit) AS total_item 
from itens_venda
where num_venda = 3

update vendas
	set total = 4
where num_venda = 3
-- 19
select * 
from vendas
order by vendedor DESC





-- 19