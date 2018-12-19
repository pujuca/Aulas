create database bar;

use bar;

create table marca(
	idMarca int not null,
	nome varchar(50),
	primary key(idMarca)
);

insert into marca values(1,"skol"),
                        (2,"Antartica"),
								(3,"Brahma"),
								(4,"Kaiser");

create table cerveja(
	idCerveja int not null,
	nome varchar(70),
	valor numeric(9,2),
	idMarca int not null,
	primary key(idCerveja),
	foreign key(idMarca) references marca(idMarca)
);

insert into cerveja values(1, "Skol 600ml", 6.00, 1),
                          (2, "Brahma 1000ml", 8.00, 3),
								  (3, "Antartica 600ml", 7.00, 2),
								  (4, "Antartica original 600ml", 10.00, 2),
								  (5, "Skol 390ml", 3.00, 1),
								  (7, "Skol Hops 600ml", 8.00, 1); 
		
--        Avaliação de exame final		 
								  
-- 1. Exiba as cervejas que são vendidas com 600ml.
-- 2. Exiba as cervejas que são da marca skol. 
-- 3. Exiba todas as informações da cerveja que é mais cara.
-- 4. Exiba o nome da cerveja, o nome da sua marca, e seu valor ordenado pela marca.
-- 5. Exiba as cervejas cujo valor é menor que a médias dos valores das cervejas.
-- 6. Modifique a tabela cerveja e insira o atributo estaque.
-- 7. Exiba as cervejas que são de 6.00, 8.00 e 10.00.
-- 8. Exiba a marca que não tem nenhuma cerveja em estoque.
-- 9. Exiba o nome da marca e o respectivo valor mais barato de de suas cervejas.
-- 10. Modifique o valor de uma das cerveja para um novo valor qualquer.