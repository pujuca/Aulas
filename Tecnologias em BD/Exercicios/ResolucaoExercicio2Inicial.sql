create database carros;

use carros;

create table tipo_veiculo(
id_tip_vei int not null,
nom_tipo_vei varchar(45),
primary key(id_tip_vei)
);

create table combustivel(
id_com int not null,
nom_com varchar(50),
primary key(id_com)
);

create table combustivel_has_tipo_veiculo(
combustivel_id_com int not null,
tipo_veiculo_id_tip_vei int not null,
primary key(combustivel_id_com, tipo_veiculo_id_tip_vei),
foreign key(combustivel_id_com) references
	combustivel(id_com),
foreign key(tipo_veiculo_id_tip_vei) references
	tipo_veiculo(id_tip_vei) 
);






