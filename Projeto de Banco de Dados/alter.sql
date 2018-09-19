-- 1
create database escola;
use escola;

--2
create table professor(
  idProfessor int not null,
  nome varchar(90)
);

-- 3
alter table professor
add primary key(idProfessor);

-- 2
create table turma(
  idTurma int not null,
  nome varchar(35),
  sala varchar(4)
);

-- 3
alter table turma
add primary key(idTurma);

-- 2
create table aluno(
  idAluno int not null,
  nome varchar(90),
  turma_idTurma int not null
);

-- 3
alter table aluno
add primary key(idAluno);

alter table aluno
add foreign key(turma_idTurma) references
            Turma(idTurma);

-- 2
create table disciplina(
  idDisciplina int not null,
  nome varchar(45),
  cargaHorario int,
  professor_idProfessor int not null,
  turma_idTurma int not null
);

-- 3
alter table disciplina
add primary key(idDisciplina);

alter table disciplina
add foreign key(professor_idProfessor)
    references Professor(idProfessor);  

alter table disciplina
add foreign key(turma_idTurma)
    references Turma(idTurma);

-- 3
alter table Professor
add tempoServico int not null;

-- 4
alter table Professor
add titulacao varchar(35) not null;

-- 5
alter table turma
drop column sala;

-- 6
alter table aluno
add curso varchar(40) not null;











