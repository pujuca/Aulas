create database restaurante;

use restaurante;

create table componente(
	id int not null,
	nome varchar(35),
	valor numeric(9,2),
	primary key(id));

create table prato(
	num int not null,
	idComponente int not null,
	nome varchar(35),
	primary key(num, idComponente),
	foreign key(idComponente) references componente(id));
	
insert into componente values(1,"Arroz", 8.00), (2,"Farofa",2.00),
									  (3,"Vinagrete",1.00), (4,"Salada verde",2.00),
									  (5,"Batata frita",10.00), (6,"Pescada Amarela",35.00),
									  (7,"Ariacó",20.00), (8,"Pirão",5.00);

insert into prato values(1,1,"Peixada amarela"),(1,4,"Peixada amarela"),
								(1,6,"Peixada amarela"),(1,8,"Peixada amarela"),
								(2,5,"Batata Frita"), (3,7,"Ariacó frito"),
								(3,2,"Ariacó frito"),(3,3,"Ariacó frito");
								
SELECT COUNT((nome))
FROM prato								