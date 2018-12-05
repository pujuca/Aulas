select * from prato
select * from componente

-- 1
select nome from prato
order by nome desc

-- 2
select num, nome from prato

-- 3
select * from prato
where nome like 'ariaco%'

-- 4
select * from prato
where idComponente = 8

-- 5
select distinct idComponente from prato

-- 6
select distinct nome from prato

-- 7
select nome, valor
from componente
where valor = (select max(valor) from componente)

-- 8
select * from prato
where idComponente = 1

select prato.*
from componente, prato
where componente.id = prato.idComponente and componente.nome = "Arroz"

-- 9
select prato.nome, componente.nome
from componente, prato
where componente.id = prato.idComponente
order by prato.nome ASC, componente.nome DESC

-- 10
select prato.nome, sum(componente.valor)
from componente, prato
where componente.id = prato.idComponente
group by prato.nome
