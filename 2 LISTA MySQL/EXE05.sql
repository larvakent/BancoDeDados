create database db_construindo_vidas;

use db_construindo_vidas;

create table tb_categorias(
id bigint auto_increment,
categoria char(155) not null,
disponibilidadeEmEstoque char(10) not null,
primary key(id)
);

create table tb_produtos(
id bigint auto_increment,
produto char(155) not null,
preco decimal(10,2) not null,
descricao varchar(255),
id_categorias bigint,
primary key(id),
foreign key(id_categorias) references tb_produtos(id)
);

insert into tb_categorias (categoria,disponibilidadeEmEstoque)
values ('banheiro','sim');
insert into tb_categorias (categoria,disponibilidadeEmEstoque)
values ('banheiro','não');
insert into tb_categorias (categoria,disponibilidadeEmEstoque)
values ('elétrica','sim');
insert into tb_categorias (categoria,disponibilidadeEmEstoque)
values ('elétrica','não');
insert into tb_categorias (categoria,disponibilidadeEmEstoque)
values ('cozinha','sim');
insert into tb_categorias (categoria,disponibilidadeEmEstoque)
values ('cozinha','não');

insert into tb_produtos (produto,preco,descricao,id_categorias)
values ('Assento Sanitário',65.90,'Assento Sanitário Almofadado Karppi Mebuki Oval Branco',1);
insert into tb_produtos (produto,preco,descricao,id_categorias)
values ('Assento Sanitário',139.90,'Assento Sanitário Sicmol Monte Carlo em MDF Branco Cromado',2);
insert into tb_produtos (produto,preco,descricao,id_categorias)
values ('Ducha Cromada Quadrada',32.99,'Ducha Lumar Cromada Quadrada Completa 6 Polegadas',1);
insert into tb_produtos (produto,preco,descricao,id_categorias)
values ('Ducha Lorenzetti',249.90,'Ducha Lorenzetti Loren Duo 2 Funcoes 7014 C16 Cromado',1);
insert into tb_produtos (produto,preco,descricao,id_categorias)
values ('Pia de Cozinha',199.90,'Pia de Cozinha Forminox Monobloco 120cm',5);
insert into tb_produtos (produto,preco,descricao,id_categorias)
values ('Cuba Inox',259.90,'Cuba Inox de Sobrepor Tramontina 35cm',6);
insert into tb_produtos (produto,preco,descricao,id_categorias)
values ('Painel Led',47.90,'Painel Led Avant Emb Quad Ne4000K 24W Bivolt',3);
insert into tb_produtos (produto,preco,descricao,id_categorias)
values ('Lâmpada LED Vermelha',18.69,'Lâmpada LED Luminatti Bulbo 10W 220V Vermelho',4);

select * from tb_categorias;
select * from tb_produtos;

select * from tb_produtos where preco > 100.00;
select * from tb_produtos where preco > 70.00 and preco < 150.00;

select * from tb_produtos where produto like '%c%';

select * from tb_produtos inner join tb_categorias 
on tb_produtos.id_categorias = tb_categorias.id;

select tb_produtos.produto, tb_produtos.preco, tb_categorias.categoria
from tb_produtos inner join tb_categorias on tb_produtos.id_categorias = tb_categorias.id;









