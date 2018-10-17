create database ecommece;

use ecommece;

-- tabelas básicas
create table status(
  cod_status int not null,
  descricao varchar(40),
  primary key(cod_status));

create table tipo_pagto(
  cod_tipo_pagto int not null,
  nome_tipo_pagto varchar(20),
  ativo bit(1),
  primary key(cod_tipo_pagto));

-- tabelas com FK
create table pedido(
  cod_pedido int not null,
  cod_cliente int not null,
  cod_tipo_pagto int not null,
  valor_total double(9,2),
  cod_endereco_entrega int not null,
  cod_endereco_cobranca int not null,
  cod_status int not null,
  data_status timestamp,
  primary key(cod_pedido),
  foreign key(cod_tipo_pagto) references
          Tipo_pagto(cod_tipo_pagto),
  foreign key(cod_status) references
          Status(cod_status));


create table entrega(
  cod_entrega int not null,
  cod_pedido int not null,
  previsao_para date,
  cod_status int not null,
  data_status timestamp,
  primary key(cod_entrega),
  foreign key(cod_pedido) references
          Pedido(cod_pedido),
  foreign key(cod_status) references
          Status(cod_status));

create table tracking(
  cod_tracking int not null,
  cod_pedido int not null,
  cod_status int not null,
  descricao varchar(50),
  data_status timestamp,
  geo_lat varchar(14),
  geo_long varchar(14),
  primary key(cod_tracking),
  foreign key(cod_pedido) references
          Pedido(cod_pedido),
  foreign key(cod_status) references
          Status(cod_status));











