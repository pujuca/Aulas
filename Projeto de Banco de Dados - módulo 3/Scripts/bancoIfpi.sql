create database bancoIfpi;

use bancoIfpi;

create table agencia(
	num_agencia varchar(8) not null,
	nome varchar(40),
	primary key(num_agencia)
);

insert into agencia values('23-x','Parnaiba');
insert into agencia values('24-x','Cocal');
insert into agencia values('25-x','Teresina');

create table cliente(
	Id_cliente int not null,
	nome varchar(50),
	idade int,
	primary key(id_cliente)
);

insert into cliente values(1,'Denival',39);
insert into cliente values(2,'Ely',37);
insert into cliente values(3,'Gerson',46);
insert into cliente values(4,'Francisco',27);

create table tipoConta(
	id_tipo varchar(2) not null,
	nome varchar(15),
	primary key(id_tipo)
);

insert into tipoConta values('P','Poupança');
insert into tipoConta values('C','Corrente');

create table conta(
	num_conta varchar(7) not null,
	num_agencia varchar(8) not null,
	tipo_conta varchar(1) not null,
	cliente int not null,
	saldo numeric(9,2),
	situacao varchar(1),
	primary key(num_conta),
	foreign key(num_agencia) references agencia(num_agencia),
	foreign key(tipo_conta) references tipoConta(id_tipo),
	foreign key(cliente) references cliente(id_cliente)
);

insert into conta values('1-x','23-x','C',1,2000.00,'F');
insert into conta values('2-x','24-x','P',3,3000.00,'A');
insert into conta values('3-x','24-x','C',4,5000.00,'F');
insert into conta values('4-x','23-x','P',1,2000.00,'A');
insert into conta values('5-x','23-x','C',3,500.00,'A');
insert into conta values('6-x','24-x','C',4,1000.00,'A');

create table deposito(
	id_deposito int not null,
	num_conta varchar(7) not null,
	valor numeric(9,2),
	data date,
	primary key(id_deposito),
	foreign key(num_conta) references conta(num_conta)
);

insert into deposito values(1,'1-x',2000.00, '2017-09-21');
insert into deposito values(2,'2-x',3000.00, '2017-09-21');
insert into deposito values(3,'3-x',5000.00, '2017-09-21');
insert into deposito values(4,'4-x',2000.00, '2017-09-21');
insert into deposito values(5,'5-x',500.00, '2017-09-21');
insert into deposito values(6,'6-x',1000.00, '2017-09-21');






