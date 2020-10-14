create database sony;

create database bck;

use bck;

-- excluindo as tabelas que deverão gerar bck.
drop table bck.clientes;
drop table bck.cargos;
drop table bck.funcionarios;
drop table bck.marcas;
drop table bck.produtos;
drop table bck.vendas;

-- criação das tabelas de bck do itau
create table bck.clientes( select * from itau.clientes);
create table bck.cargos( select * from itau.cargos);
create table bck.funcionarios( select * from itau.funcionarios);
create table bck.marcas( select * from itau.marcas);
create table bck.produtos( select * from itau.produtos);
create table bck.vendas( select * from itau.vendas);



create table sony.gravadora(
nome_gravadora varchar(50) not null,
email_gravadora varchar(80) not null,
site_gravadora varchar(80) not null,
cod_gravadora int not null auto_increment,
primary key(cod_gravadora)
);

insert into sony.gravadora
(nome_gravadora,email_gravadora,site_gravadora)
values
("Sony","sony@sony.com.br","www.sony.com.br"),
("SomLivre","somlivre@somlibvre.com.br","www.somlivre.com.br"),
("EMI","emi@emi.com","www.emi.com");


create table sony.cd(
cod_cd int not null,
nome_cd varchar(50) not null,
preco_cd decimal(5,2) not null,
data_lancamento datetime,
cod_gravadora int not null,
primary key(cod_cd,nome_cd),
foreign key(cod_gravadora) references gravadora(cod_gravadora)
);

insert into sony.cd
(cod_cd,nome_cd,preco_cd,data_lancamento,cod_gravadora)
values
(1,"Paixão - Roberto Carlos",35.75,now(),1),
(2,"Que rei sou eu",20.00,now(),2),
(3,"Beatles",45.00,now(),3);

-- describe sony.cd;

drop table sony.musica_cd;

-- alter table sony.cd add cod_cd int not null primary key;

create table sony.musica_cd(
cod_cd int not null,
cod_musica int not null,
faixa int(2) not null,
primary key(cod_cd,cod_musica),
foreign key(cod_cd) references sony.cd(cod_cd)
);

-- drop table sony.musica_cd;

insert into sony.musica_cd
(cod_cd,cod_musica,faixa)
values
(1,1,2),
(1,2,2),
(1,3,3),
(1,4,4);


select g.nome_gravadora, c.nome_cd, c.preco_cd
from
sony.gravadora as g
left join sony.cd as c
on(c.cod_gravadora = g.cod_gravadora);

select g.nome_gravadora, c.nome_cd, c.preco_cd
from
sony.gravadora as g,
sony.cd as c
where (c.cod_gravadora = g.cod_gravadora);

