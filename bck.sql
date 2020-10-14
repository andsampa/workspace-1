CREATE PROCEDURE `new_procedure` ()
BEGIN
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

END
