create database carros;

use carros;

-- cria a tabela de marcas
create table cor (
  idCor int not null,	
  nomeCor varchar(20),
  primary key(idCor)
);

-- cria a tabela de marcas
create table marca (
  idMarca int not null,
  nomeMarca varchar(20),
  primary key(idMarca)
);

-- cria a tabela de modelos
create table modelo (
  idModelo int not null,
  nomeModelo varchar(30),
  marca int not null,
  primary key(idModelo),
  foreign key(marca) references marca(idMarca)
);

-- cria a tabela de veiculo
create table veiculo(
  placa varchar(8) not null,
  cor int not null,
  modelo int not null,	
  ano int,
  valor numeric(9,2),
  primary key(placa),
  foreign key(cor) references cor(idCor),
  foreign key(modelo) references modelo(idModelo)
);
