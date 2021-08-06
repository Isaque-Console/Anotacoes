create database business;
use business;

show databases;

create table cliente(
	idcliente int primary key auto_increment,
    nome varchar(30) not null,
    sexo enum('M','F') not null,
    email varchar(50) unique,
    cpf varchar(15) unique
);

create table endereco(
	idendereco int primary key auto_increment,
    rua varchar(30) not null,
	bairro varchar(30) not null,
    cidade varchar(30) not null,
    estado char(2) not null,
    id_cliente int unique,
    foreign key(id_cliente)
    references cliente(idcliente)
);

create table telefone(
	idtelefone int primary key auto_increment,
    numero varchar(14) not null,
    tipo enum('RES','COM','CEL') not null,
    id_cliente int,
    foreign key(id_cliente)
    references cliente(idcliente)
);
select * from telefone;

desc telefone;

insert into endereco values(null, 'manuel firmino','patriolino ribeiro',"fortaleza",'CE',11);
insert into endereco values(null, 'conselheiro gomes','cidade dos funcionarios',"fortaleza",'CE',1);
insert into endereco values(null, 'francisco xerez','patriolino ribeiro',"fortaleza",'CE',12);
insert into endereco values(null, 'presidente vargas','jardins',"b.horizonte",'MG',2);
insert into endereco values(null, 'capitao hermes','centro',"rio de janeiro",'RJ',10);
insert into endereco values(null, 'fim do mundo','itapeir',"fortaleza",'CE',9);

insert into telefone values(null, '(85)98777-7570','CEL', 11);

insert into telefone values(null, '(85)98745-6500','CEL', 12);
insert into telefone values(null, '(85)98777-2345','RES', 11);
insert into telefone values(null, '(85)1234-7570','COM', 11);
insert into telefone values(null, '(85)98777-5555','RES', 12);
insert into telefone values(null, '(85)98777-4444','CEL', 1);
insert into telefone values(null, '(85)98777-1111','CEL', 1);
insert into telefone values(null, '(85)1111-7570','CEL', 2);

select * from telefone
where tipo='CEL';

use business;

select nome,sexo,bairro,cidade
from cliente
inner join endereco
on idcliente = id_cliente
where cidade= 'rio de janeiro';

select nome,sexo,email,tipo,numero
from cliente
inner join telefone
on idcliente = id_cliente
where sexo = 'f';

select c.nome,c.sexo,e.bairro,e.cidade,t.tipo,t.numero
from cliente c
inner join endereco e
on c.idcliente = e.id_cliente
inner join telefone t
on c.idcliente = t.id_cliente;

desc cliente;

insert into cliente values (null, 'paula', 'M', null, '4455566988');
insert into endereco values (null, 'rua joaquim silva', 'alvorada', 'niteroi', 'RJ', 13);

select * from cliente;

select * from cliente
WHERE idcliente =13;

update cliente
set sexo='F'
where idcliente=13;

insert into cliente values(null, 'XXX', 'M', null, '11111111');

select * from cliente
where idcliente=14;	

delete from cliente
where idcliente = 14;

use business;
create table produto(
	idproduto int primary key auto_increment,
    nome_produto varchar(30) not null,
    preco int,
    frete float(10,2) not null
);

alter table produto
change preco valor_unitario int not null;

alter table produto
modify valor_unitario varchar(50) not null;

desc produto;


alter table produto
add peso float(10,2) not null;

alter table produto
drop column peso;

alter table produto
add column peso float(10,2) not null
first;

alter table produto
drop column peso;
SELECT * FROM cliente;
INSERT INTO cliente VALUES(NULL,'FLAVIO','M','FLAVIO@IG.COM','4657765');
INSERT INTO cliente VALUES(NULL,'ANDRE','M','ANDRE@GLOBO.COM','7687567');
INSERT INTO cliente VALUES(NULL,'GIOVANA','F',NULL,'0876655');
INSERT INTO cliente VALUES(NULL,'KARLA','M','KARLA@GMAIL.COM','545676778');
INSERT INTO cliente VALUES(NULL,'DANIELE','M','DANIELE@GMAIL.COM','43536789');
INSERT INTO cliente VALUES(NULL,'LORENA','M',NULL,'774557887');
INSERT INTO cliente VALUES(NULL,'EDUARDO','M',NULL,'54376457');
INSERT INTO cliente VALUES(NULL,'ANTONIO','F','ANTONIO@IG.COM','12436767');
INSERT INTO cliente VALUES(NULL,'ANTONIO','M','ANTONIO@UOL.COM','3423565');
INSERT INTO cliente VALUES(NULL,'ELAINE','M','ELAINE@GLOBO.COM','32567763');
INSERT INTO cliente VALUES(NULL,'CARMEM','M','CARMEM@IG.COM','787832213');
INSERT INTO cliente VALUES(NULL,'ADRIANA','F','ADRIANA@GMAIL.COM','88556942');
INSERT INTO cliente VALUES(NULL,'JOICE','F','JOICE@GMAIL.COM','55412256');

INSERT INTO endereco VALUES(NULL,'RUA GUEDES','CASCADURA','B. HORIZONTE','MG',15);
INSERT INTO endereco VALUES(NULL,'RUA MAIA LACERDA','ESTACIO','RIO DE JANEIRO','RJ',16);
INSERT INTO endereco VALUES(NULL,'RUA VISCONDESSA','CENTRO','RIO DE JANEIRO','RJ',17);
INSERT INTO endereco VALUES(NULL,'RUA NELSON MANDELA','COPACABANA','RIO DE JANEIRO','RJ',18);
INSERT INTO endereco VALUES(NULL,'RUA ARAUJO LIMA','CENTRO','VITORIA','ES',19);
INSERT INTO endereco VALUES(NULL,'RUA CASTRO ALVES','LEBLON','RIO DE JANEIRO','RJ',20);
INSERT INTO endereco VALUES(NULL,'AV CAPITAO ANTUNES','CENTRO','CURITIBA','PR',21);
INSERT INTO endereco VALUES(NULL,'AV CARLOS BARROSO','JARDINS','SAO PAULO','SP',22);
INSERT INTO endereco VALUES(NULL,'ALAMEDA SAMPAIO','BOM RETIRO','CURITIBA','PR',23);
INSERT INTO endereco VALUES(NULL,'RUA DA LAPA','LAPA','SAO PAULO','SP',24);
INSERT INTO endereco VALUES(NULL,'RUA GERONIMO','CENTRO','RIO DE JANEIRO','RJ',25);
INSERT INTO endereco VALUES(NULL,'RUA GOMES FREIRE','CENTRO','RIO DE JANEIRO','RJ',26);
INSERT INTO endereco VALUES(NULL,'RUA GOMES FREIRE','CENTRO','RIO DE JANEIRO','RJ',27);

INSERT INTO telefone VALUES(NULL,'68976565','RES',15);
INSERT INTO telefone VALUES(NULL,'99656675','CEL',15);
INSERT INTO telefone VALUES(NULL,'33567765','CEL',16);
INSERT INTO telefone VALUES(NULL,'55689654','COM',17);
INSERT INTO telefone VALUES(NULL,'88687979','COM',18);
INSERT INTO telefone VALUES(NULL,'89966809','CEL',19);
INSERT INTO telefone VALUES(NULL,'88679978','COM',20);
INSERT INTO telefone VALUES(NULL,'99655768','CEL',20);
INSERT INTO telefone VALUES(NULL,'89955665','RES',21);
INSERT INTO telefone VALUES(NULL,'77455786','RES',22);
INSERT INTO telefone VALUES(NULL,'89766554','RES',23);
INSERT INTO telefone VALUES(NULL,'77755785','RES',24);
INSERT INTO telefone VALUES(NULL,'44522578','COM',25);
INSERT INTO telefone VALUES(NULL,'11221122','CEL',26);
INSERT INTO telefone VALUES(NULL,'22112211','COM',27);

use business;

select c.idcliente, c.nome,c.sexo,c.email,c.cpf,
	t.numero,t.tipo,
	e.rua, e.bairro, e.cidade, e. estado
from cliente c
inner join telefone t
on c.idcliente = t.id_cliente
inner join endereco e
on c.idcliente = e.id_cliente
where sexo = 'F';

desc cliente;
desc telefone;
desc endereco;;

SELECT count(*) as quantidade, sexo
from cliente
group by sexo;
 
select * from cliente
where idcliente in (11,16,22);

update cliente set sexo = 'M'
where idcliente in (11,16,22);



select * from endereco;
/* 10,11,12,13,16,17 */

select c.idcliente, c.email, c.nome, c.sexo, e.bairro, e.cidade, t.tipo
from cliente c
inner join endereco e
on c.idcliente = e.id_cliente
inner join telefone t
on c.idcliente = t.id_cliente
where sexo = 'F' and bairro = 'centro' and cidade = 'rio de janeiro' and (tipo = 'COM' or tipo = 'RES');

select c.nome, c.email, t.numero as celular, e.estado
from cliente c
inner join telefone t
on c.idcliente = t.id_cliente
inner join endereco e
on c.idcliente = e.id_cliente
where estado = 'Rj' and tipo = 'CEL';

select c.nome, c.email, t.tipo, t.numero, e.estado
from cliente c
inner join telefone t
on c.idcliente = t.id_cliente
inner join endereco e
on c.idcliente = e.id_cliente
where tipo = 'CEL' and estado = 'SP' and sexo = 'F';




select c.nome, ifnull(c.email, 'Não tem email') as 'E-MAIL', t.tipo, t.numero, e.estado
from cliente c
inner join telefone t
on c.idcliente = t.id_cliente
inner join endereco e
on c.idcliente = e.id_cliente;

desc telefone;
use business;
create view v_relatorio as
select c.nome, ifnull(c.email, 'Não tem email') as 'E-MAIL', t.tipo, t.numero, e.estado
from cliente c
inner join telefone t
on c.idcliente = t.id_cliente
inner join endereco e
on c.idcliente = e.id_cliente;

select * from v_relatorio;

show tables;

drop view relatorio;

select nome, numero, estado
from v_relatorio;

INSERT INTO v_relatorio values( /* Deu erro. Error Code: 1394. Can not insert into join view 'business.v_relatorio' without fields list*/
	'andreia','andreia@uol.com.br','CEL','9547854785', 'ES' 
);

select * from v_relatorio
where nome='isaque';

UPDATE v_relatorio SET nome = 'carlos' WHERE nome = 'andre';

use business;

CREATE TABLE ALUNOS(
	NUMERO INT,
    NOME VARCHAR(30)
);

INSERT INTO ALUNOS VALUES(1,'JOAO');
INSERT INTO ALUNOS VALUES(1,'MARIA');
INSERT INTO ALUNOS VALUES(2,'ZOE');
INSERT INTO ALUNOS VALUES(2, 'ANDRE');
INSERT INTO ALUNOS VALUES(3,'CLARA');
INSERT INTO ALUNOS VALUES(1, 'CLARA');
INSERT INTO ALUNOS VALUES(4,'MAFRA');
INSERT INTO ALUNOS VALUES(5,'JANAINA');
INSERT INTO ALUNOS VALUES(1,'JANAINA');
INSERT INTO ALUNOS VALUES(3,'MARCELO');
INSERT INTO ALUNOS VALUES(4,'GIOVANI');
INSERT INTO ALUNOS VALUES(5,'ANTONIO');
INSERT INTO ALUNOS VALUES(6,'ANA');
INSERT INTO ALUNOS VALUES(6,'VIVIANE');


SELECT * FROM ALUNOS
ORDER BY NUMERO; /*ORDENA PELO NUMERO*/

SELECT * FROM ALUNOS
ORDER BY 1; /*ORDENA PELA PRIMEIRA COLUNA, QUE É A COLUNA NUMERO*/

SELECT * FROM ALUNOS
ORDER BY 2; /*ORDENA PELA SEGUNDA COLUNA, QUE É O NOME*/

/*ORDENANDO POR MAIS DE UMA COLUNA*/

SELECT * FROM ALUNOS
ORDER BY 1,2;

/*MESCLANDO ORDER BY COM PROJECAO*/

SELECT NOME FROM ALUNOS
ORDER BY NUMERO,NOME;

/*ORDER BY DESC / ASC */

SELECT * FROM ALUNOS
ORDER BY 1 ASC; /*MENOR PARA O MAIOR (JA E O PADRÃO)*/

SELECT * FROM ALUNOS
ORDER BY 1 DESC; /*MAIOR PARA O MENOR*/

SELECT * FROM ALUNOS
ORDER BY 1,2 DESC;

SHOW TABLES;

/*ORDENANDO COM JOINS*/

select c.nome, ifnull(c.email, 'Não tem email') as 'E-MAIL', t.tipo, t.numero, e.estado
from cliente c
inner join telefone t
on c.idcliente = t.id_cliente
inner join endereco e
on c.idcliente = e.id_cliente
ORDER BY 1;

USE business;

/* Estou usando o delimiter não padrão '$' */


SELECT * FROM v_relatorio $ ;

DELIMITER $
CREATE PROCEDURE NOME_EMPRESA()
BEGIN

	SELECT 'UNIVERSIDADE DOS DADOS' AS EMPRESA;

END
$

CALL NOME_EMPRESA;

CREATE DATABASE PROJETO;
USE PROJETO;

CREATE TABLE CURSOS(
	IDCURSO INT PRIMARY KEY AUTO_INCREMENT,
    NOME VARCHAR(30) NOT NULL,
    HORAS INT NOT NULL,
    VALOR FLOAT NOT NULL
);

SHOW TABLES;

DROP TABLE CURSOS;

DESC CURSOS;

DELIMITER #
CREATE PROCEDURE CAD_CURSO(NOME VARCHAR(30), HORAS INT, VALOR FLOAT)
BEGIN
	INSERT INTO CURSOS VALUES(NULL,NOME,HORAS,VALOR);
END
#

CALL CAD_CURSO('BI SQL SERVER', 35, 3000.00); 
CALL CAD_CURSO('POWER BI', 20, 1000.00);
CALL CAD_CURSO('TABLEAU', 30, 1200.00);
CALL CAD_CURSO('JAVA', 30, 500.00);
CALL CAD_CURSO('FUNDAMENTOS DE BANCO DE DADOS', 40, 700.00);

SELECT * FROM CURSOS;

DELIMITER $
CREATE PROCEDURE GET_CURSO(P_NOME VARCHAR(30))
BEGIN
	SELECT * FROM CURSOS WHERE NOME = P_NOME;
END
$

CALL GET_CURSO('JAVA');

CREATE TABLE VENDEDOR(
	IDVENDEDOR INT PRIMARY KEY AUTO_INCREMENT,
    NOME VARCHAR (30),
	SEXO CHAR(1),
    JANEIRO FLOAT,
    FEVEREIRO FLOAT,
    MARCO FLOAT
);

INSERT INTO VENDEDOR VALUES(NULL, 'CARLOS', 'M', 45644.85, 5824.63, 7541156.00);
INSERT INTO VENDEDOR VALUES(NULL, 'MARIA', 'F', 45414.85, 5654.63, 780056.00);
INSERT INTO VENDEDOR VALUES(NULL, 'ANTONIO', 'M', 42244.85, 4824.63, 784456.00);
INSERT INTO VENDEDOR VALUES(NULL, 'CLARA', 'F', 45644.00, 5224.63, 789116.00);
INSERT INTO VENDEDOR VALUES(NULL, 'ANDERSON', 'M', 74569.85, 5424.63, 722456.00);
INSERT INTO VENDEDOR VALUES(NULL, 'IVONE', 'F', 1478.23, 584.63, 783356.00);
INSERT INTO VENDEDOR VALUES(NULL, 'JOAO', 'M', 1597.00, 5887.63, 784456.00);
INSERT INTO VENDEDOR VALUES(NULL, 'CELIA', 'F', 4568.85, 5454.63, 785556.00);


SELECT * FROM VENDEDOR;

SELECT MAX(NOME) AS BIGGER_FEV FROM VENDEDOR;

SELECT MIN(FEVEREIRO) AS SMALLER_FEV FROM VENDEDOR;

SELECT AVG(JANEIRO) AS AVERAGE_JAN FROM VENDEDOR;

SELECT MAX(JANEIRO) AS BIGGER_JAN,
	   MIN(JANEIRO) AS SMALLER_JAN,
       TRUNCATE(AVG(JANEIRO),2) AS AVG_JAN
FROM VENDEDOR;

SELECT MAX(JANEIRO) AS BIGGER_JAN,
	   MIN(JANEIRO) AS SMALLER_JAN,
       AVG(JANEIRO) AS AVG_JAN,
       TRUNCATE(AVG(JANEIRO),2) AS TRUN_AVG
FROM VENDEDOR;

USE PROJETO;
SELECT SUM(JANEIRO) AS TOTAL_JAN,
		SUM(FEVEREIRO) AS TOTAL_FEV,
        SUM(MARCO) AS TOTAL_MARCO
        FROM VENDEDOR;
        
SHOW DATABASES;

/*Trazer o total de vendas dos dois sexos no mês de marco*/
SELECT SEXO, MAX(MARCO) AS TOTAL_MARCO
FROM VENDEDOR
GROUP BY SEXO;
        
SELECT MAX(MARCO) FROM VENDEDOR WHERE SEXO = 'M';

SELECT NOME,MARCO AS MIN_MARCO 
FROM VENDEDOR
WHERE MARCO = (SELECT MIN(MARCO) FROM VENDEDOR);


SELECT NOME,MARCO AS MAX_MARCO 
FROM VENDEDOR
WHERE MARCO = (SELECT MAX(MARCO) FROM VENDEDOR);

SELECT AVG(MARCO) FROM VENDEDOR;

SELECT NOME,MARCO 
FROM VENDEDOR
WHERE MARCO > (SELECT AVG(MARCO) FROM VENDEDOR);

INSERT INTO VENDEDOR VALUES(NULL, 'FRANCISCO', 'M', 4568.85, 3000.00, 3000.00);

SELECT NOME,JANEIRO,FEVEREIRO,MARCO,
	   TRUNCATE((JANEIRO+FEVEREIRO+MARCO),2) AS "TOTAL",
	   TRUNCATE((JANEIRO+FEVEREIRO+MARCO)/3,2) AS "AVERAGE"
       FROM VENDEDOR;

SELECT TRUNCATE((JANEIRO+FEVEREIRO+MARCO),2) AS "TOTAL" FROM VENDEDOR;

SELECT NOME,JANEIRO,FEVEREIRO,MARCO,
	   TRUNCATE((JANEIRO+FEVEREIRO+MARCO),2) AS "TOTAL",
       TRUNCATE((JANEIRO+FEVEREIRO+MARCO),2) * 0.25 AS "DESCONTO",
	   TRUNCATE((JANEIRO+FEVEREIRO+MARCO)/3,2) AS "AVERAGE"
       FROM VENDEDOR;
USE business;
CREATE TABLE TABELA(
	COLUNA1 VARCHAR(30),
    COLUNA2 VARCHAR(30),
    COLUNA3 VARCHAR(30)
);

/*Adicionar PK em uma tabela*/
ALTER TABLE TABELA
ADD PRIMARY KEY (COLUNA1);

/*Adicionar uma FK em uma tabela*/
ALTER TABLE FICTICIO
ADD FOREIGN KEY(ID_PESSOA)
REFERENCES PESSOA(COLUNA1);

DESC TABELA;

ALTER TABLE TABELA
ADD COLUNA varchar(30);

ALTER TABLE TABELA
ADD COLUNA4 VARCHAR(30) NOT NULL UNIQUE
AFTER COLUNA3;

ALTER TABLE TABELA
MODIFY COLUNA2 DATE NOT NULL;

ALTER TABLE TABELA
RENAME PESSOA;

DESC PESSOA;

/*Descricao mais detalhada da tabela*/
SHOW CREATE TABLE PESSOA;

DROP TABLE endereco;
DROP TABLE telefone;
DROP TABLE cliente;

USE exercicio;

CREATE TABLE CLIENTE(
	IDCLIENTE INT,
	NOME VARCHAR(30) NOT NULL
);

CREATE TABLE TELEFONE(
	IDTELEFONE INT,
	TIPO CHAR(3) NOT NULL,
    NUMERO VARCHAR(10) NOT NULL,
    ID_CLIENTE INT
);

ALTER TABLE CLIENTE ADD CONSTRAINT PK_CLIENTE
PRIMARY KEY (IDCLIENTE);

ALTER TABLE TELEFONE ADD CONSTRAINT FK_CLIENTE_TELEFONE
FOREIGN KEY(ID_CLIENTE) REFERENCES CLIENTE(IDCLIENTE);

SHOW CREATE TABLE TELEFONE;

/*DICIONARIO DE DADOS*/
SHOW DATABASES;

USE INFORMATION_SCHEMA;

SHOW TABLES;

DESC TABLE_CONSTRAINTS;

SELECT CONSTRAINT_SCHEMA AS "BANCO",
		TABLE_NAME AS "TABELA",
        CONSTRAINT_TYPE AS "TIPO"
        FROM TABLE_CONSTRAINTS
        WHERE CONSTRAINT_SCHEMA = "Comercios";
        
SELECT CONSTRAINT_SCHEMA AS "BANCO",
		TABLE_NAME AS "TABELA",
        CONSTRAINT_NAME AS "NOME REGRA",
        CONSTRAINT_TYPE AS "TIPO"
        FROM TABLE_CONSTRAINTS
        WHERE CONSTRAINT_SCHEMA = "exercicio";
        
USE exercicio;

ALTER TABLE TELEFONE
DROP FOREIGN KEY FK_CLIENTE_TELEFONE;

/* SISTEMA DO SEU JOSE(MINHA VERSAO) */
CREATE DATABASE OFICINA;
USE OFICINA;

CREATE TABLE CLIENTE(
	IDCLIENTE INT,
    NOME VARCHAR(40),
    EMAIL VARCHAR(40),
    TELEFONE VARCHAR(13)
);

CREATE TABLE CARRO(
	IDCARRO INT,
    NOMECARRO VARCHAR(30),
    MARCA VARCHAR(30),
    ID_CLIENTE INT
);

CREATE TABLE COR(
	IDCOR INT,
    NOME VARCHAR(30),
    ID_CARRO INT
);
/* FIZ ESSES CONSTRAINTS DE FORMA ERRADA, MAS JÁ FOI */
ALTER TABLE CLIENTE
ADD PRIMARY KEY (IDCLIENTE);

ALTER TABLE CARRO
ADD PRIMARY KEY (IDCARRO);

ALTER TABLE CARRO
ADD FOREIGN KEY (ID_CLIENTE)
REFERENCES CLIENTE(IDCLIENTE);

USE OFICINA;

DROP TABLE CARRO;
DROP TABLE COR;
DROP TABLE CLIENTE;

/* SISTEMA DO SEU JOSE(VERSAO DO PROF) */

CREATE TABLE CLIENTE(
	IDCLIENTE INT PRIMARY KEY AUTO_INCREMENT,
    NOME VARCHAR(30) NOT NULL,
    SEXO ENUM('M','F') NOT NULL,
    ID_CARRO INT UNIQUE
);

CREATE TABLE TELEFONE(
	IDTELEFONE INT PRIMARY KEY AUTO_INCREMENT,
    TIPO ENUM('CEL','RES','COM') NOT NULL,
    NUMERO VARCHAR(30) NOT NULL,
    ID_CLIENTE INT
);

CREATE TABLE MARCA(
	IDMARCA INT PRIMARY KEY AUTO_INCREMENT,
    MARCA VARCHAR(30) UNIQUE
);

CREATE TABLE CARRO(
	IDCARRO INT PRIMARY KEY AUTO_INCREMENT,
    MODELO VARCHAR(30) NOT NULL,
    PLACA VARCHAR(30) NOT NULL UNIQUE,
    ID_MARCA INT
);

CREATE TABLE COR(
	IDCOR INT PRIMARY KEY AUTO_INCREMENT,
    COR VARCHAR(30) UNIQUE
);

CREATE TABLE CARRO_COR(
	ID_CARRO INT,
    ID_COR INT,
    PRIMARY KEY(ID_CARRO,ID_COR)
);

/* CONSTRAINTS */

ALTER TABLE TELEFONE
ADD CONSTRAINT FK_TELEFONE_CLIENTE
FOREIGN KEY (ID_CLIENTE)
REFERENCES CLIENTE(IDCLIENTE);

ALTER TABLE CLIENTE
ADD CONSTRAINT FK_CLIENTE_CARRO
FOREIGN KEY(ID_CARRO)
REFERENCES CARRO(IDCARRO);

ALTER TABLE CARRO
ADD CONSTRAINT FK_CARRO_MARCA
FOREIGN KEY(ID_MARCA)
REFERENCES MARCA(IDMARCA);

ALTER TABLE CARRO_COR
ADD CONSTRAINT FK_COR
FOREIGN KEY(ID_COR)
REFERENCES COR(IDCOR);

ALTER TABLE CARRO_COR
ADD CONSTRAINT FK_CARRO
FOREIGN KEY(ID_CARRO)
REFERENCES CARRO(IDCARRO);

/* PREENCHER O BANCO COM NO MINIMO 10 CLIENTES */

INSERT INTO MARCA VALUES(NULL,'FIAT'); /* ID 1 */
INSERT INTO MARCA VALUES(NULL,'TOYOTA'); /* ID 2 */

INSERT INTO CARRO VALUES(NULL,'SIENA','1234ABC',1);
INSERT INTO CLIENTE VALUES(NULL,'ISAQUE','M',1);

INSERT INTO CARRO VALUES(NULL,'COROLLA','1235ABC',2);
INSERT INTO CLIENTE VALUES(NULL,'RAQUEL','F',2);

INSERT INTO CARRO VALUES(NULL,'GRAND SIENA','1236ABC',1);
INSERT INTO CLIENTE VALUES(NULL,'PEDRO','M',3);

INSERT INTO CARRO VALUES(NULL,'SIENA_TURBO','1237ABC',1);
INSERT INTO CLIENTE VALUES(NULL,'ROZANA','F',4);

INSERT INTO CARRO VALUES(NULL,'COROLLA_TURBO','1238ABC',2);
INSERT INTO CLIENTE VALUES(NULL,'PAULO','M',5);

INSERT INTO CARRO VALUES(NULL,'PRIUS','1239ABC',2);
INSERT INTO CLIENTE VALUES(NULL,'PRISCILA','F',6);

INSERT INTO CARRO VALUES(NULL,'UNO','1210ABC',1);
INSERT INTO CLIENTE VALUES(NULL,'PAULO_PAI','M',7);

INSERT INTO CARRO VALUES(NULL,'STRADA','1211ABC',1);
INSERT INTO CLIENTE VALUES(NULL,'BITONIA','F',8);

INSERT INTO CARRO VALUES(NULL,'CROSS','1212ABC',2);
INSERT INTO CLIENTE VALUES(NULL,'JOAO','M',9);

INSERT INTO CARRO VALUES(NULL,'HILUX','1213ABC',2);
INSERT INTO CLIENTE VALUES(NULL,'EDSON','M',10);



