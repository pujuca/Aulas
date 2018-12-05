-- 1
select Pai.pai, Filho.filho
from Pai, Filho
where pai.id_pai = filho.id_pai

-- 2
select *
from pai
where salario = (select max(salario) from pai)

-- 3
select *
from pai
where id_pai in (select id_pai from filho)

-- 4
select * from filho
where idade > 18
 
-- 5
select * from filho
where id_pai in (select id_pai from pai
						where salario > 1000)

-- 6
select * from filho
where id_pai in (select id_pai from pai
						where salario > (select avg(salario) from pai))

-- 7
select Pai.pai, max(filho.idade)
from pai, filho
where pai.id_pai = filho.id_pai
group by Pai.pai

-- 8
select id_pai, pai from Pai
						where salario > (select avg(salario) from pai)
						

-- 9
select Pai.pai, count(filho.id_pai)
from pai, filho
where pai.id_pai = filho.id_pai
group by Pai.pai

-- 10
select Pai.pai, count(filho.id_pai) as qteFilhos
from pai, filho
where pai.id_pai = filho.id_pai
group by Pai.pai
having count(filho.id_pai) > 1







						













