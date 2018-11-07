-- 1
select max(valor) from veiculo

-- 2
select min(valor) from veiculo

-- 3
SELECT SUM(valor) FROM veiculo

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
where placa like "%AAA%"

-- 9
select * from veiculo
where placa like "%0"

-- 10
select Marca.marca, Modelo.modelo
from Marca, Modelo
where Marca.id_Marca = Modelo.id_marca
order by Marca.marca

-- 13
select Veiculo.placa, Marca.marca, Modelo.modelo, Cor.cor, Veiculo.valor
from Veiculo, cor, modelo, marca
where Cor.id_cor = veiculo.cor and 
      modelo.id_modelo = veiculo.modelo and
      marca.id_marca = modelo.id_marca

-- 14
select *
from veiculo
where ano = 2010 and valor > 20000

-- 16
select *
from veiculo
where ano is null


























