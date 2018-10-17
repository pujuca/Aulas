create database faceifpi;

use faceifpi;

create table sentimento(
	idSentimento int not null,
	nome varchar(40),
	primary key(idSentimento)
);
-- 2
insert into sentimento values(1,"Alegre");
insert into sentimento values(2,"Festivo");
insert into sentimento values(3,"Triste");

create table usuario(
	idUsuario int not null,
	nome varchar(60),
	idade int,
	primary key(idUsuario)
);

-- 1
insert into usuario values(1,"Marilia",32);
insert into usuario values(2,"Denival JR",15);
insert into usuario values(3,"Jamilly",12);
insert into usuario(idUsuario, nome) values(4,"Denival");

-- 3
update usuario
	set idade = 40
where idUsuario = 4;

-- 4
delete from usuario
where idade < 18;

-- 9
update usuario
	set idade = idade + 1
where idUsuario = 2;	

create table postagem(
	numPostagem int not null,
	dia date,
	hora time,
	conteudo varchar(100),
	sentimento int not null,
	usuario int not null,
	primary key(numPostagem),
	foreign key(sentimento) references Sentimento(idSentimento),
	foreign key(usuario) references usuario(idUsuario)
);

-- 5
insert into postagem values(1,"2018-10-11","14:19:00","Feriadão",2,4);
insert into postagem values(2,"2018-10-11","14:20:00","Recuperando da cirurgia",1,1);
insert into postagem values(3,"2018-10-07","14:20:00","Votação",1,4);


-- 6
update postagem
	set conteudo = "Feriado a vista" 
where sentimento = 2;	

-- 7
delete from postagem
where sentimento = 3;

-- 8
update postagem
	set conteudo = "Eleição 2018 - Indo votar"
where dia = "2018-10-07"








