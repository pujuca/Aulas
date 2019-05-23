create database escola;

use escola;

create table aluno(
	matricula int not null,
	nome varchar(60) not null,
	primary key(matricula)
);

create table conselho(
	semestreAno varchar(7) not null,
	data date,
	primary key(semestreAno)
);

create table alunoConselho(
	semestreAno varchar(7) not null,
	matricula int not null,
	reclamacao varchar(90),
	primary key(semestreAno, matricula),
	foreign key(semestreAno) references conselho(semestreAno),
	foreign key(matricula) references aluno(matricula)
);

										                             