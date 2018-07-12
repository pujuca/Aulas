-- 1
select max(valor) from veiculo

-- 2
select min(valor) from veiculo

-- 3
select sum(valor) from veiculo

-- 4
select min(ano) from veiculo

-- 5
select count(placa) from veiculo

-- 6
select avg(valor) from veiculo

-- 7
select * from modelo
where modelo like "F%"

-- 8
select * from veiculo
where placa like "AAA%"

-- 9
select * from veiculo
where placa like "%7"

-- 10 - junção simples
select Modelo.modelo, Marca.marca
from modelo, marca
where marca.id_marca = modelo.id_marca

-- 11 - junção interna
select Modelo.modelo, Marca.marca
from modelo inner join marca 
                       ON modelo.id_marca = marca.id_marca

-- 12
select veiculo.placa, Cor.cor, Modelo.modelo, Veiculo.valor
from veiculo left outer join cor ON veiculo.cor = cor.id_cor
             left outer join modelo ON veiculo.modelo = modelo.id_modelo

-- 13
select veiculo.placa, Cor.cor, Modelo.modelo, Veiculo.valor
from veiculo, cor, modelo 
where veiculo.cor = cor.id_cor AND veiculo.modelo = modelo.id_modelo

-- 14
select *
from veiculo
where ano = "2010" and valor > 20000

-- 15
select Marca.marca, Modelo.modelo
from marca left outer join modelo ON marca.id_marca = modelo.id_marca

-- 16
select *
from veiculo
where ano is null















             
             
             
             
             
             















