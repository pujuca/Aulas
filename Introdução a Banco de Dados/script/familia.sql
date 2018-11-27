create database familia;

use familia;

create table pai(
 idPai int not null,
 nome varchar(60),
 primary key(idPai)
);

insert into pai values(1,"Denival"),(2,"Gerson");

create table filho(
 idfilho int not null,
 nome varchar(60),
 idade int,
 paiFilho int,
 primary key(idfilho),
 foreign key(paifilho) references pai(idPai)
);

insert into filho values(1,"DJ",16,1),(2,"Teresa",12,2),
                        (3,"Antonio Neto",5,2),(4,"Jamilly",12,1)  ;

