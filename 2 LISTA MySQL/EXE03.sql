create database db_farmacia_bem_estar;

use db_farmacia_bem_estar;

create table tb_categorias(
id bigint auto_increment,
marca char(155) not null,
generico char(5) not null,
primary key(id)
);

create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
preco decimal(10,2) not null,
lote bigint not null,
validade date not null,
id_categorias bigint,
primary key(id),
foreign key (id_categorias) references tb_categorias(id) 
);

insert into tb_categorias (marca,generico)
values ('Neo Química','não');
insert into tb_categorias (marca,generico)
values ('Novartis','não' );
insert into tb_categorias (marca,generico)
values ('Eurofarma','sim');
insert into tb_categorias (marca,generico)
values ('Geolab','sim');
insert into tb_categorias (marca,generico)
values ('Natulab','não');

insert into tb_produtos(nome,preco,lote,validade,id_categorias)
values ('Lubfem',5.90,117307,20220801,1);
insert into tb_produtos(nome,preco,lote,validade,id_categorias)
values ('Pantanol S',62.50,22113,20220601,3);
insert into tb_produtos(nome,preco,lote,validade,id_categorias)
values ('Clonazepam',28.90,200168,20220801,5);
insert into tb_produtos(nome,preco,lote,validade,id_categorias)
values ('Desogestrel',14.90,160980,20221009,4);
insert into tb_produtos(nome,preco,lote,validade,id_categorias)
values ('Torsilax',8.90,2113647,20231001,2);
insert into tb_produtos(nome,preco,lote,validade,id_categorias)
values ('Loratadina',24.90,180922,20230201,2);
insert into tb_produtos(nome,preco,lote,validade,id_categorias)
values ('Doralgina',6.00,2162339,20230801,2);
insert into tb_produtos(nome,preco,lote,validade,id_categorias)
values ('Lacrifilm',5.90,2032302,20230201,2);

select * from tb_categorias;
select * from tb_produtos;

select * from tb_produtos where preco > 50.00;
select * from tb_produtos where preco > 5.00 and preco < 60.00;

select * from tb_produtos where nome like "%C%";

select * from tb_produtos inner join tb_categorias 
on tb_produtos.id_categorias = tb_categorias.id;

select tb_produtos.nome, tb_produtos.preco, tb_categorias.marca, tb_categorias.generico
from tb_produtos inner join tb_categorias on tb_produtos.id_categorias = tb_categorias.id;

