create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categorias(
id bigint auto_increment,
tipoPizza char(120) not null,
tamanho char(10) not null,
primary key(id)
);

create table tb_pizzas(
id bigint auto_increment,
nomePizza char(255) not null,
sabor varchar(255) not null,
preco decimal(10,2) not null,
massa char(120),
id_categorias bigint,
primary key(id),
foreign key (id_categorias) references tb_categorias(id)
);

insert into tb_categorias(tipoPizza,tamanho) values ("Tradicional","P");
insert into tb_categorias(tipoPizza,tamanho) values ("Tradicional","M");
insert into tb_categorias(tipoPizza,tamanho) values ("Tradicional","G");
insert into tb_categorias(tipoPizza,tamanho) values ("Doce","P");
insert into tb_categorias(tipoPizza,tamanho) values ("Doce","M");
insert into tb_categorias(tipoPizza,tamanho) values ("Doce","G");

insert into tb_pizzas(nomePizza,sabor,preco,massa,id_categorias)
values ("Calabresa","Calabresa, mussarela e molho",22.90,"Fina",3);
insert into tb_pizzas(nomePizza,sabor,preco,massa,id_categorias)
values ("Presunto com Queijo","Presunto, mussarela, gorgonzola e molho",29.90,"Fina",3);
insert into tb_pizzas(nomePizza,sabor,preco,massa,id_categorias)
values ("Frango","Frango, mussarela e molho",24.90,"Grossa",2);
insert into tb_pizzas(nomePizza,sabor,preco,massa,id_categorias)
values ("4 queijos","Gorgonzola, mussarela, queijo do reino, queijo minas e molho",32.90,"Fina",2);
insert into tb_pizzas(nomePizza,sabor,preco,massa,id_categorias)
values ("Nutella com Ninho","Meia Nutella e meia Ninho",35.90,"Grossa",4);
insert into tb_pizzas(nomePizza,sabor,preco,massa,id_categorias)
values ("Cartola","Banana caramelizada, mussarela e molho",29.90,"Grossa",6);
insert into tb_pizzas(nomePizza,sabor,preco,massa,id_categorias)
values ("Romeu e Julieta","Queijo coalho, goiabada, mussarela e molho",28.90,"Fina",5);
insert into tb_pizzas(nomePizza,sabor,preco,massa,id_categorias)
values ("Portuguesa","Calabresa, mussarela e molho",22.90,"Fina",1);

select * from tb_categorias;
select * from tb_pizzas;

select * from tb_pizzas where preco > 45.00;
select * from tb_pizzas where preco > 50.00 and preco < 100.00;

select * from tb_pizzas where nomePizza like "%M%";

select * from tb_pizzas inner join 
tb_categorias on tb_categorias.id = tb_pizzas.id_categorias;

select tb_pizzas.id, tb_pizzas.nomePizza, tb_pizzas.sabor, tb_pizzas.preco, tb_categorias.id, tb_categorias.tamanho 
from tb_pizzas inner join tb_categorias 
on tb_pizzas.id_categorias = tb_categorias.id where tamanho = "M"; 







