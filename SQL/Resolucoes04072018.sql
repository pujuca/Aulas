-- 1
select cod_produto, produto, unidade
From produto

-- 2
select *
from produto
where produto like "A%"

-- 3
select *
from produto
where unidade = "KG"

-- 4
select cliente
from cliente 	

-- 5
select *
from Cliente
where cliente like "%s"

-- 6
select vendedor
from Vendedor 

-- 7
select vendas.num_venda, cliente.cliente,
       vendedor.vendedor, vendas.data	
from vendas, cliente, vendedor
where vendas.comprador = cliente.id_cliente and
      vendas.vendedor = vendedor.id_vendedor 
order by vendas.num_venda		    

-- 8
select produto.produto, itens_venda.quantidade,
       itens_venda.valor_unit, 
		 (itens_venda.quantidade * itens_venda.valor_unit) as Total
from produto, itens_venda
where itens_venda.produto = produto.cod_produto and 
      itens_venda.num_venda = 1   
      
-- 9
select distinct produto.produto
from itens_venda, produto
where itens_venda.produto = produto.cod_produto
order by produto.produto ASC

-- 10
select vendas.*
from vendas, vendedor
where vendas.vendedor = vendedor.id_vendedor and
      vendedor.vendedor = "Denival" and
      vendas.data >= "2013-06-01" and
      vendas.data <= "2013-06-30"
order by vendas.data DESC      
      
-- 11














 
 
 
 