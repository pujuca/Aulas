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

-- 11
select Modelo.modelo, Marca.marca 
from Marca inner join Modelo 
		ON Marca.id_marca = Modelo.id_marca

-- 12
select Veiculo.placa, Modelo.modelo, Cor.cor, Veiculo.valor
from Veiculo left outer join Modelo 
                  ON Veiculo.modelo = Modelo.id_modelo
				 left outer join Cor
				      ON Veiculo.cor = Cor.id_cor		   

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

-- 15
select marca.marca, modelo.modelo
from marca left outer join modelo
              ON marca.id_marca = modelo.id_marca

-- 16
select *
from veiculo
where ano is null

-- 17
select id_marca, count(id_marca)
from modelo
group by id_marca

-- 18
select modelo.modelo, veiculo.valor
from modelo, veiculo
where veiculo.modelo = modelo.id_modelo 
      and veiculo.valor = (select max(valor) from veiculo)




























