-- create database itau;
-- use itau;

/*create table itau.clientes(
Cod_cliente int(6) not null primary key,
Nome_cliente varchar(50) not null,
Idade_cliente int(3) not null,
Email_cliente varchar(80) not null,
Data_Modificacao_Registro datetime
);

describe itau.clientes;

insert into itau.clientes
(Cod_cliente,Nome_cliente,Idade_cliente,Email_cliente,Data_Modificacao_Registro)
values
(1,"Ricardo Leonel",22,"ricardo.leonel@itau.com.br","2020-10-14 09:48:00"),
(2,"Rafael Lucena",19,"rafaellucena@itau.com.br",now()),
(3,"Pamela Souza",18,"pamelas@itau.com.br",now());

select * from itau.clientes;

INSERT INTO `clientes` (`Cod_cliente`,`Nome_cliente`,`Idade_cliente`,`Email_cliente`,`Data_Modificacao_Registro`) VALUES (4,"Xenos Morin",87,"enim.sit@sapien.net","2021-04-18 03:52:25"),(5,"Jasmine B. Cox",84,"Maecenas.mi.felis@atortorNunc.edu","2021-07-04 05:41:50"),(6,"Salvador Gaines",74,"mauris.ut@placerat.ca","2021-03-29 00:19:08"),(7,"Otto Ellison",57,"aliquet.Phasellus.fermentum@ametconsectetueradipiscing.net","2020-01-19 18:13:56"),(8,"Rafael Ramsey",59,"laoreet@blanditenim.org","2021-01-12 13:13:00"),(9,"Victor Jarvis",64,"amet@intempuseu.net","2020-09-21 03:01:33"),(10,"Moses E. Mann",85,"Proin@tortorat.co.uk","2021-03-05 09:58:21"),(11,"Kaye G. Wong",39,"turpis.nec.mauris@massalobortisultrices.edu","2020-07-21 00:39:17"),(12,"Nero B. Brennan",71,"metus.facilisis.lorem@atiaculis.ca","2020-06-18 09:39:11"),(13,"Aaron C. Riggs",29,"convallis@vulputaterisus.edu","2021-01-15 11:37:40");
INSERT INTO `clientes` (`Cod_cliente`,`Nome_cliente`,`Idade_cliente`,`Email_cliente`,`Data_Modificacao_Registro`) VALUES (14,"Sigourney Hines",99,"amet@Cras.com","2021-01-06 22:17:03"),(15,"Hedley Dillon",68,"Fusce@tempuseu.co.uk","2020-04-10 18:20:14"),(16,"Josephine Gould",31,"erat.vitae@velconvallisin.net","2021-01-24 16:26:42"),(17,"Jasmine A. Fletcher",82,"dictum.magna@risusMorbimetus.org","2020-10-07 01:44:34"),(18,"Britanney Waters",25,"fames@vulputate.net","2021-01-28 22:57:57"),(19,"Clarke Reilly",45,"mi.lorem@bibendumfermentum.net","2020-02-09 02:26:02"),(20,"Leroy O. Emerson",100,"bibendum.ullamcorper.Duis@loremtristique.edu","2020-05-10 16:39:24"),(21,"Ingrid Navarro",86,"libero.Proin@vitae.org","2019-10-17 23:57:45"),(22,"Nathaniel Serrano",76,"egestas.blandit@velitPellentesqueultricies.co.uk","2021-10-06 04:20:21"),(23,"George Cruz",32,"Donec.sollicitudin@Crasegetnisi.edu","2021-09-15 15:33:57");
INSERT INTO `clientes` (`Cod_cliente`,`Nome_cliente`,`Idade_cliente`,`Email_cliente`,`Data_Modificacao_Registro`) VALUES (24,"Tana Hamilton",31,"pede.Suspendisse.dui@cursusNuncmauris.ca","2020-06-19 14:16:07"),(25,"Avram Lewis",22,"adipiscing.fringilla@dictumplacerat.ca","2021-02-04 10:21:45"),(26,"Jamalia Rivers",20,"ac.turpis.egestas@ipsum.com","2021-03-18 03:20:13"),(27,"Tad W. Cote",43,"Curabitur.massa.Vestibulum@ipsum.net","2021-05-25 03:22:17"),(28,"Brenden Lindsay",57,"risus.at@eratEtiamvestibulum.co.uk","2021-01-10 21:28:12"),(29,"Ora U. Terrell",98,"a.ultricies@incursus.net","2021-02-16 09:10:09"),(30,"Illana Downs",18,"vel.convallis@auctorveliteget.co.uk","2021-08-04 13:55:04"),(31,"Rhoda O. Hammond",20,"non.vestibulum.nec@risus.ca","2019-12-01 06:05:11"),(32,"Isaac N. Wilcox",47,"ante.iaculis@nonummy.co.uk","2021-05-07 08:23:53"),(33,"Brett I. Floyd",75,"nibh.Donec@insodales.com","2019-11-07 06:53:47");
INSERT INTO `clientes` (`Cod_cliente`,`Nome_cliente`,`Idade_cliente`,`Email_cliente`,`Data_Modificacao_Registro`) VALUES (34,"Devin I. Rosales",19,"semper.erat@dolorFuscefeugiat.ca","2020-06-25 19:13:17"),(35,"Christian Underwood",36,"in.aliquet@leoVivamusnibh.co.uk","2020-01-28 20:53:25"),(36,"Driscoll W. Sanchez",44,"faucibus.orci.luctus@loremsitamet.co.uk","2020-07-07 21:41:38"),(37,"Sara Bradford",73,"hymenaeos.Mauris@ridiculus.edu","2021-06-04 12:01:28"),(38,"Sloane I. Neal",34,"id@ut.co.uk","2020-05-16 15:10:32"),(39,"Morgan Z. Head",19,"eu.tellus@sodalesnisimagna.org","2021-05-01 02:01:54"),(40,"Tashya Robertson",44,"diam.Proin.dolor@ametnullaDonec.edu","2021-07-13 19:37:39"),(41,"Daphne B. Baker",44,"lacinia@loremvitae.ca","2019-12-09 01:08:59"),(42,"Evangeline Snyder",97,"Duis@velpedeblandit.org","2020-04-09 02:15:19"),(43,"Juliet Lynn",39,"suscipit.est.ac@eueuismodac.com","2021-06-22 01:13:13");
INSERT INTO `clientes` (`Cod_cliente`,`Nome_cliente`,`Idade_cliente`,`Email_cliente`,`Data_Modificacao_Registro`) VALUES (44,"Regan Waters",45,"porttitor@ipsumprimisin.ca","2020-07-26 20:37:59"),(45,"Tara O. Martinez",74,"eu@mauris.com","2020-08-13 06:15:57"),(46,"Kiayada Valdez",74,"libero.Donec.consectetuer@Mauris.com","2020-07-24 02:04:28"),(47,"Clio D. Barr",94,"aliquam@augueporttitorinterdum.org","2020-05-08 18:17:23"),(48,"Shelley Tran",36,"Proin@adipiscingfringillaporttitor.ca","2021-06-26 08:52:38"),(49,"Tarik A. Jarvis",53,"Pellentesque.ut.ipsum@iaculisenimsit.org","2020-09-24 07:40:21"),(50,"Gavin Q. Whitfield",24,"aliquet@elementum.com","2020-11-30 01:58:06"),(51,"Zephr O. Levine",36,"in@liberoIntegerin.co.uk","2021-09-23 07:08:08"),(52,"Stephanie Wolf",90,"habitant@metussitamet.com","2021-09-20 12:04:27"),(53,"Randall Winters",67,"risus.a.ultricies@eu.net","2020-06-13 10:54:59");
INSERT INTO `clientes` (`Cod_cliente`,`Nome_cliente`,`Idade_cliente`,`Email_cliente`,`Data_Modificacao_Registro`) VALUES (54,"Branden A. Harding",69,"velit.eget@viverra.org","2020-03-29 02:26:22"),(55,"Blossom Livingston",41,"amet.luctus@turpis.ca","2021-03-14 19:22:41"),(56,"Gray H. Rowe",86,"ut.nulla.Cras@Uttincidunt.edu","2020-06-06 14:55:10"),(57,"Sasha B. Lamb",100,"nec@facilisisvitaeorci.co.uk","2020-12-28 13:43:41"),(58,"Carolyn P. Dejesus",85,"litora.torquent@utmolestie.edu","2021-01-17 08:34:16"),(59,"Dustin Reynolds",49,"ipsum.leo@nisiMauris.co.uk","2019-12-11 08:49:24"),(60,"Frances Andrews",43,"sem@odioPhasellusat.edu","2020-11-22 05:48:10"),(61,"Alvin T. Acosta",58,"ipsum.ac.mi@massaMaurisvestibulum.net","2021-08-02 21:38:03"),(62,"Galvin Shannon",74,"nibh@Donecelementumlorem.net","2021-06-01 22:09:23"),(63,"Kirk Y. Case",40,"tincidunt.Donec.vitae@Duisacarcu.com","2020-12-16 13:11:32");
INSERT INTO `clientes` (`Cod_cliente`,`Nome_cliente`,`Idade_cliente`,`Email_cliente`,`Data_Modificacao_Registro`) VALUES (64,"Chantale Pittman",32,"ac.mattis.velit@placerateget.net","2020-07-05 22:55:58"),(65,"Elizabeth Peters",98,"malesuada@sedsem.net","2020-02-21 14:31:04"),(66,"Kathleen Thornton",32,"mattis.Integer.eu@musAeneaneget.com","2020-08-10 03:39:04"),(67,"Sarah Moses",52,"nulla.Integer.urna@sedorci.co.uk","2021-05-03 05:55:20"),(68,"Hedda Potter",57,"justo.nec@nisiAeneaneget.org","2021-01-02 12:35:58"),(69,"Sacha W. Swanson",97,"ipsum.porta.elit@Aliquamgravidamauris.co.uk","2021-10-13 12:22:34"),(70,"Bradley L. Anderson",97,"et@molestietortornibh.edu","2021-07-27 10:51:22"),(71,"Regan Q. Brock",45,"purus.sapien.gravida@Cras.net","2020-03-19 03:42:52"),(72,"Zeph Mcknight",37,"non.arcu@Pellentesquehabitantmorbi.co.uk","2020-06-17 15:23:22"),(73,"Armand Y. Haynes",58,"velit.Sed@est.net","2021-05-30 08:11:19");
INSERT INTO `clientes` (`Cod_cliente`,`Nome_cliente`,`Idade_cliente`,`Email_cliente`,`Data_Modificacao_Registro`) VALUES (74,"Kamal G. Mueller",23,"interdum.ligula@consequatpurusMaecenas.net","2020-08-29 12:34:54"),(75,"Briar Sawyer",26,"rutrum.eu@adipiscinglobortis.co.uk","2021-02-16 20:01:34"),(76,"Robert F. Sweeney",82,"lectus@malesuada.org","2020-11-05 22:10:37"),(77,"Gray Black",39,"pretium@Maecenaslibero.ca","2021-04-24 09:11:53"),(78,"Amanda Ryan",48,"orci.Ut.sagittis@nondui.org","2020-10-23 20:12:54"),(79,"Maxine J. Peterson",62,"Duis.elementum@Donec.edu","2021-05-05 05:27:49"),(80,"Orlando F. Blair",58,"sagittis@Aliquam.co.uk","2021-04-01 18:19:13"),(81,"Lyle B. Tanner",31,"orci.Donec.nibh@hendrerit.ca","2021-05-29 23:40:27"),(82,"Claudia U. Harding",59,"ligula.elit@Vivamusnibhdolor.com","2020-08-26 23:39:46"),(83,"Brent X. Barry",65,"vestibulum.nec@scelerisqueneque.ca","2020-09-23 08:38:09");
INSERT INTO `clientes` (`Cod_cliente`,`Nome_cliente`,`Idade_cliente`,`Email_cliente`,`Data_Modificacao_Registro`) VALUES (84,"Macaulay W. Parker",72,"erat@Suspendisse.com","2020-07-16 03:00:21"),(85,"Leilani A. Dorsey",91,"fringilla@et.co.uk","2021-09-06 12:56:44"),(86,"Gisela Christensen",82,"sed.leo@Aeneangravidanunc.net","2019-11-24 12:07:15"),(87,"Indigo Gonzalez",59,"ut@senectuset.org","2020-05-15 10:58:04"),(88,"Bruce R. Cain",75,"libero.et.tristique@elitdictumeu.co.uk","2021-02-09 23:17:40"),(89,"Ina X. Stanton",48,"neque.tellus.imperdiet@magnisdis.com","2020-08-22 19:04:47"),(90,"Hyacinth K. Gross",75,"Sed.id@etnuncQuisque.com","2020-09-29 07:42:10"),(91,"Risa M. Curtis",19,"molestie.tortor.nibh@nibh.com","2021-03-02 02:24:58"),(92,"Griffin Cobb",67,"tempor.arcu@elitNulla.com","2020-08-05 15:53:03"),(93,"Ahmed Garner",33,"ullamcorper@gravidaPraesenteu.co.uk","2020-05-29 06:34:25");
INSERT INTO `clientes` (`Cod_cliente`,`Nome_cliente`,`Idade_cliente`,`Email_cliente`,`Data_Modificacao_Registro`) VALUES (94,"Deacon Q. Bonner",55,"et@necmaurisblandit.ca","2019-11-24 03:16:49"),(95,"Herman Welch",50,"Donec.elementum.lorem@nonleoVivamus.ca","2020-02-16 02:52:18"),(96,"Jasper Ochoa",61,"diam.eu@aliquet.co.uk","2021-08-16 11:26:37"),(97,"Jameson Lee",36,"augue@enim.edu","2021-05-21 21:10:38"),(98,"Kasimir Caldwell",38,"eros.non.enim@nibhAliquamornare.ca","2020-08-12 06:07:01"),(99,"Garth Mcfarland",20,"lacus.varius@apurus.co.uk","2021-03-07 01:59:11"),(100,"Eve Y. Allison",63,"Morbi.neque.tellus@Classaptenttaciti.com","2020-02-21 03:11:02"),(101,"Hannah D. Weiss",35,"urna.Nunc.quis@odio.net","2020-07-29 06:07:35"),(102,"Vernon D. Rosario",58,"Nunc.mauris.elit@risusNullaeget.ca","2021-09-03 09:03:14"),(103,"Hedda F. Martin",88,"Suspendisse.non@tellus.com","2020-01-22 01:06:18");


select nome_cliente,idade_cliente,email_cliente from itau.clientes order by Nome_cliente;

select max(idade_cliente) from itau.clientes;
select min(idade_cliente) from itau.clientes;
select * from itau.clientes where Idade_cliente=100;

select * from itau.clientes where Idade_cliente=(select max(Idade_cliente) from itau.clientes);

select * from itau.clientes where Idade_cliente=(select min(Idade_cliente) from itau.clientes);

select * from itau.clientes where Idade_cliente>=18 and Idade_cliente<=30 order by Idade_cliente;

select * from itau.clientes where Idade_cliente>50 order by Idade_cliente;

select count(*) from itau.clientes where Idade_cliente>50 order by Idade_cliente;

select * from itau.clientes where Idade_cliente in(20,30,40) order by Idade_cliente;

select * from itau.clientes where Cod_cliente=20;

select * from itau.clientes where Nome_cliente like "Jamalia%";
select * from itau.clientes where Nome_cliente like "%Rivers";

insert into itau.clientes
(Cod_cliente,Nome_cliente,Idade_cliente,Email_cliente,Data_Modificacao_Registro)
values
(105,"Pamela Souza Patrocinio",19,"pamelasp@itau.com.br",now());

select * from itau.clientes where Nome_cliente like "%Souza%";

insert into itau.clientes
(Cod_cliente,Nome_cliente,Idade_cliente,Email_cliente,Data_Modificacao_Registro)
values
(106,"Souza Silva",20,"souza@itau.com.br",now());

select * from itau.clientes where Nome_cliente like "%Souza%";

select * from itau.clientes where Email_cliente like "%@itau%";

create table itau.bck_clientes (select * from itau.clientes);

create database unibanco;

create table unibanco.clientes (select * from itau.clientes);

drop table itau.bck_clientes;

drop table itau.clientes;

create table itau.clientes(
cod_cliente int not null,
nome_cliente varchar(50) not null,
cpf_cliente char(11) not null,
endereco_cliente varchar(80) not null,
bairro_cliente varchar(50) not null,
estado_cliente char(2) not null,
idade_cliente int(3) not null,
especial boolean,
email_cliente varchar(80) not null,
agencia int(4) not null,
conta_corrente int(6) not null,
dig_verificador int(1) not null,
data_modificacao_cliente datetime,
primary key (cod_cliente,cpf_cliente)
);

insert into itau.clientes
(cod_cliente,nome_cliente,cpf_cliente,endereco_cliente,bairro_cliente,estado_cliente,idade_cliente,especial,
email_cliente,agencia,conta_corrente,dig_verificador,data_modificacao_cliente)
select
cod_cliente,nome_cliente,"atualizar","atualizar endereço","atualizar","xx",idade_cliente,1,
email_cliente,0,0,0,Data_Modificacao_Registro
from unibanco.clientes

describe unibanco.clientes

select * from itau.clientes

alter table itau.clientes rename column endereco_clientes to endereco_cliente

update itau.clientes set endereco_cliente="Rua Tito" where nome_cliente like "Ricardo L%";

update itau.clientes set estado_cliente="SP" where nome_cliente like "Ricardo L%";

update itau.clientes set endereco_cliente="Rua Fabia" where idade_cliente=19;

select * from itau.clientes

create table itau.bck_clientes (select * from itau.clientes);

create table itau.vendas(
id_venda int not null auto_increment,
nome_vendedor varchar(50) not null,
qtd_produtos int not null,
valor_unitario_produto decimal(8,2) not null,   
produto_vendido varchar(40) not null,
cidade_venda varchar(40) not null,
primary key (id_venda)
);

insert into itau.vendas
(nome_vendedor,qtd_produtos,valor_unitario_produto,produto_vendido,cidade_venda)
values
("Marcos",10,25.99,"Mouse","São Paulo"),
("Paulo",25,35.99,"Teclado","São Paulo"),
("Marly",80,15.50,"Pendrive","São Paulo"),
("Matheus",10,25.99,"Mouse","Rio de Janeiro"),
("Cristina",30,3590.99,"Notebook","São Paulo"),
("Edison",28,450.80,"Impressoras","São Paulo"),
("Roberta",15,500.00,"Monitores","Rio de Janeiro");*/

select * from itau.vendas;
SELECT 
    nome_vendedor,
    qtd_produtos,
    valor_unitario_produto,
    (qtd_produtos * valor_unitario_produto) AS total,
    produto_vendido,
    cidade_venda
FROM
    itau.vendas;
    
SELECT 
    cidade_venda,
    SUM(qtd_produtos * valor_unitario_produto) AS total_vendas
FROM
    itau.vendas
GROUP BY cidade_venda;    

describe itau.vendas;

SELECT 
    produto_vendido,
    cidade_venda,
    SUM(qtd_produtos * valor_unitario_produto) AS total_vendas
FROM
    itau.vendas
WHERE
    produto_vendido = 'mouse'
    group by cidade_venda;
    
select * from itau.vendas where produto_vendido="mouse"

select * from itau.clientes where cod_cliente=8;

insert into itau.clientes
(cod_cliente,nome_cliente,cpf_cliente,endereco_cliente,bairro_cliente,estado_cliente,idade_cliente,especial,email_cliente,agencia,conta_corrente,dig_verificador,data_modificacao_cliente)
select cod_cliente,nome_cliente,cpf_cliente,endereco_cliente,bairro_cliente,estado_cliente,idade_cliente,especial,email_cliente,agencia,conta_corrente,dig_verificador,data_modificacao_cliente from itau.bck_clientes where cod_cliente=8

-- delete from itau.clientes where cod_cliente=8;

create table itau.produtos(
Cod_Produto int not null auto_increment,
Nome_produto varchar(40) not null,
Valor_Produto decimal(6,2) not null,
Cod_Marca_Produto int not null,
primary key (Cod_Produto)
);

insert into itau.produtos
(nome_produto,valor_produto,cod_marca_produto)
values
("Geladeira",1890.00,1),
("Fogão",1250.00,1),
("Microondas",679.99,2),
("Batedeira",190.00,3),
("Liquidificador",89.99,2);

select * from itau.produtos;

create table itau.marcas(
cod_marca int not null auto_increment primary key,
nome_marcar varchar(50) not null
);

alter table itau.marcas rename column nome_marcar to nome_marca;

insert into itau.marcas
(nome_marca)
values
("Brastemp"),("Eletrolux"),("Cadence"),("Walita");

describe itau.marcas;

select * from itau.marcas;

select p.nome_produto,p.valor_produto,p.Cod_Marca_Produto,m.nome_marca,m.cod_marca
from
itau.produtos as p,
itau.marcas as m
where p.Cod_Marca_Produto=m.cod_marca;

create table itau.cargos(
Cod_cargo char(2) not null,
Nome_cargo varchar(50) not null,
Valor_Cargo decimal(8,2) not null,
primary key (Cod_Cargo)
);

insert into itau.cargos
(Cod_cargo,Nome_cargo,Valor_Cargo)
Values
("C6","Gerente de TI",5900.00)
("C1","Analista de Sistemas",7850.50),
("C2","DBA",8500.00),
("C3","Estagiário",1800.00),
("C4","Gerente de Operações",6850.00),
("C5","Auxiliar Administrativo",3500.00);

create table itau.funcionarios(
Matricula int not null auto_increment,
Nome_Funcionario varchar(50) not null,
Cod_cargo char(2) not null,
primary key (Matricula),
foreign key (Cod_cargo) references cargos(Cod_cargo)
);

insert into itau.funcionarios
(Nome_Funcionario,Cod_cargo)
values
("Vinicius","C1");

insert into itau.funcionarios
(Nome_Funcionario,Cod_cargo)
values
("Caio Martins","C2"),
("Givanildo","C3"),
("Tarciano","C3"),
("Pedro Lara","C4"),
("Otavio Augusto","C4"),
("Victor Hugo","C2"),
("Ricardo Alexandre","C5");

delete from itau.cargos where cod_cargo="C6";

delete from itau.funcionarios where nome_funcionario="Tarciano";

select c.nome_cargo,c.valor_cargo,f.matricula,f.nome_funcionario
from
itau.cargos as c
inner join itau.funcionarios as f
on(c.Cod_cargo=f.Cod_cargo);

select c.nome_cargo,c.valor_cargo,f.matricula,f.nome_funcionario
from
itau.cargos as c
left join itau.funcionarios as f
on(c.Cod_cargo=f.Cod_cargo);