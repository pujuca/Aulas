-- 1
select *
from conta 
where tipo_conta = 'C'

-- 2
select tipo_conta, count(tipo_conta)
from conta
group by tipo_conta

-- 3
select *
from agencia
where num_agencia not in (select num_agencia from conta)

-- 4
select *
from cliente
where id_cliente in (select cliente from conta 
                     where saldo = (select max(saldo) from conta))
                     
-- 5
select * from conta
where situacao = 'F'

-- 6
select * 
from conta
where cliente = (select id_cliente from cliente
                 where nome = 'Denival')
                 
-- 7
select * 
from conta
where num_Conta = (select num_conta from deposito
						 where valor = (select max(valor) from deposito)) 
						 
-- 8
select * 
from deposito
where valor > (select avg(valor) from deposito)  

-- 9
create or replace view vwContaCliente as
	select conta.num_conta, conta.num_agencia, tipoconta.nome as tipo, 
	       cliente.nome as cliente, 
	       conta.saldo, conta.situacao
	from conta, tipoConta, cliente
	where conta.tipo_conta = tipoconta.id_tipo and 
	      conta.cliente = cliente.id_cliente

select * from vwContaCliente   

-- 10
create index idxCliente on cliente(nome)           





