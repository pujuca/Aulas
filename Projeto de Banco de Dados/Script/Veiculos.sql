create database veiculos;

use veiculos;

create table tipo_veiculo(
  id_tip_vei int not null,
  nom_tip_vei varchar(45),
  primary key(id_tip_vei));


create table combustivel(
  id_com int not null,
  nom_com varchar(50),
  primary key(id_com));

create table combustivel_has_tipo_veiculo(
  combustivel_id_com int not null,
  tipo_veiculo_id_tip_vei int not null,
  primary key(combustivel_id_com, tipo_veiculo_id_tip_vei),
  foreign key(combustivel_id_com) references
          Combustivel(id_com),
  foreign key(tipo_veiculo_id_tip_vei) references
          Tipo_veiculo(id_tip_vei));

create table marca(
  id_mar int not null,
  nome_marc varchar(70),
  primary key(id_mar)
);

create table tipo_veiculo_marca(
  id_mar int not null,
  id_tip_vei int not null,
  primary key(id_mar, id_tip_vei),
  foreign key(id_mar) references
          Marca(id_mar),
  foreign key(id_tip_vei) references
          Tipo_veiculo(id_tip_vei));

create table cor(
  id_cor int not null,
  nom_cor varchar(70),
  primary key(id_cor));

create table album(
  id_alb int not null,
  nom_alb varchar(250),
  primary key(id_alb));

create table ano_fabricacao(
  id_ano_fab int not null,
  num_ano_fab int,
  primary key(id_ano_fab));

create table ano_modelo(
  id_ano_mod int not null,
  num_ano_mod int,
  primary key(id_ano_mod));

 
create table veiculo(
  id_vei bigint not null,
  km_vei varchar(45),
  pre_vei int,
  val_vei int,
  pla_vei varchar(14),
  id_mar int not null,
  id_tip_vei int not null,
  id_ano_mod int not null,
  id_ano_fab int not null,
  id_cor int not null,
  id_alb int not null,
  primary key(id_vei),
  foreign key(id_alb) references
          Album(id_alb),
  foreign key(id_cor) references
          Cor(id_cor),
  foreign key(id_ano_fab) references
          Ano_fabricacao(id_ano_fab),
  foreign key(id_ano_mod) references
          Ano_modelo(id_ano_mod),
  foreign key(id_mar, id_tip_vei) references
          tipo_veiculo_marca(id_mar, id_tip_vei));


















