create database pm;

use pm;

create table delito(
   id_delito int not null,
   nome varchar(35),
   primary key(id_delito)
);

insert into delito values(1,"Roubo");
insert into delito values(2,"Latrocinio");
insert into delito values(3,"Furto");

create table localidade(
   id_localidade int not null,
   nome varchar(35),
   primary key(id_localidade)
);

insert into localidade values(1,"Planalto");
insert into localidade values(2,"Catavento");
insert into localidade values(3,"Catanduvas");

create table ocorrencia(
   num_ocorrencia int not null,
   delito int not null,
   localidade int not null,
   data date,
   hora time,
   primary key(num_ocorrencia),
   foreign key(delito) references delito(id_delito),
   foreign key(localidade) references localidade(id_localidade)
);

insert into ocorrencia values(1,1,1,"2016-02-29","12:00:00");
insert into ocorrencia values(2,2,2,"2016-02-29","13:00:00");
insert into ocorrencia values(3,3,3,"2016-02-29","14:00:00");
insert into ocorrencia values(4,1,3,"2016-02-29","14:00:00");
insert into ocorrencia values(5,1,1,"2016-03-01","12:00:00");
insert into ocorrencia values(6,1,1,"2016-03-01","14:00:00");
insert into ocorrencia values(7,2,2,"2016-03-01","16:00:00");
insert into ocorrencia values(8,1,1,"2016-03-02","12:00:00");
