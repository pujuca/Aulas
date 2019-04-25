create database olxifpi;

use olxifpi;

create table estado(
	UF varchar(2) not null,
	nome varchar(35),
	primary key(UF)
);

create table categoria(
	idCategoria int not null,
	nome varchar(30),
);

create table usuario(
	idUsuario int not null,
	nome varchar(35),
	primary key(idUsuario)
);

create table postagem(
	numPostagem int not null,
	idCategoria int not null,
	idUsuario int not null,
	descricao varchar(50),
	primary key(numPostagem),
	foreign key(idCategoria) references categoria(idCategoria),
	foreign key(idUsuario) references usuario(idUsuario)
);
