
-- 2

insert into cor values(1,"Branco");
insert into cor values(2,"Preto");
insert into cor values(3,"Vermelho");
insert into cor values(4,"Azul");
insert into cor values(5,"Cinza");

insert into marca values(1,"Volkswagen");
insert into marca values(2,"Toyota");
insert into marca values(3,"Chevrolet");
insert into marca values(4,"Fiat");
insert into marca values(5,"Ford");

insert into modelo values(1,"Hilux",2);
insert into modelo values(2,"Siena",4);
insert into modelo values(3,"Fiesta",5);
insert into modelo values(4,"Fusca",1);
insert into modelo values(5,"Corsa",3);

insert into veiculo values("LVW1518",1,5,2010,100000.00);
insert into veiculo values("XXX1017",5,3,2009,20000.00);
insert into veiculo values("YYY0516",2,2,2013,35000.00);
insert into veiculo values("TTT2510",3,4,1960,2000.00);
insert into veiculo values("AAA2512",1,3,2010,18000.00);

-- 3
update veiculo
	set cor = 2
where placa = "LVW1510";

-- 4
update cor
	set nomeCor = "Rosa Choque"
where idCor = 5;	

-- 5
update veiculo
	set ano = 2011
where ano = 2010;

-- 6
delete from veiculo
where placa = "TTT2510";

-- 7
delete from cor
where idCor = 1;

-- 8
delete from modelo
where idModelo = 4





