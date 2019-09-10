-- 1
INSERT INTO estado VALUES('PI','Piauí'),('MA','Maranhão'),('CE','Ceará');

-- 2
INSERT INTO estado VALUES('PI','Piauí');

-- 3
DELETE FROM estado
WHERE uf = 'MA';

-- 4
INSERT INTO categoria VALUES(1,'Imoveis'),(2,'Veiculos'),(3,'Emprego');

-- 5
ALTER TABLE usuario
ADD idade INT;

-- 6
INSERT INTo usuario VALUES(1,'Denival',39), (2,'Marilia',30),(3,'Jamilly',10);
INSERT INTO usuario(idusuario, nome) VALUES(4,'Athanio');

-- 7
UPDATE usuario
	SET idade = 35
WHERE idusuario = 4;

-- 8
ALTER TABLE postagem
ADD estado VARCHAR(2) NOT NULL;

-- 9
ALTER TABLE postagem
ADD FOREIGN KEY(estado) REFERENCES estado(uf);

-- 10
UPDATE usuario
	SET idade = 41
WHERE idusuario = 1;

-- 12
INSERT INTO postagem VALUES(1,2,4,'Palio atractive 2010','PI');
INSERT INTO postagem VALUES(2,1,1,'Apartamento duplex','CE');
INSERT INTO postagem VALUES(3,3,3,'Médica pediatra','PI');






 
	

















