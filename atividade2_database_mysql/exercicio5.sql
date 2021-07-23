create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint auto_increment,
tipo varchar(255) not null,
distribuidora varchar(255) not null,
contem_estoque boolean,
primary key (id)
);

insert into tb_categoria (tipo, distribuidora, contem_estoque) values ("Elétrica", "Jão's Construtora", true);
insert into tb_categoria (tipo, distribuidora, contem_estoque) values ("Hidráulica", "Jão's Construtora", true);
insert into tb_categoria (tipo, distribuidora, contem_estoque) values ("Ferramentas", "Pedrinho Construtora", false);
insert into tb_categoria (tipo, distribuidora, contem_estoque) values ("Tintas", "Pedrinho Construtora", false);
insert into tb_categoria (tipo, distribuidora, contem_estoque) values ("Acessórios", "Jão's Construtora", true);
insert into tb_categoria (tipo, distribuidora, contem_estoque) values ("Cola e Adesivos", "Pedrinho Construtora", true);


create table tb_produto(
id bigint auto_increment,
nome varchar(255),
quantidade int,
preco decimal(5,2),
marca varchar(255),
modelo varchar(255),
categoria_id bigint,
primary key(id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_produto(nome, quantidade, preco, marca, modelo, categoria_id) values ("Capacitor p/ motor", 40, 15.99, "Garen", "12uf", 1);
insert into tb_produto(nome, quantidade, preco, marca, modelo, categoria_id) values ("Cabo flexível", 30, 205.50, "Cobrecom", "2,5mm, 100 metros", 1);
insert into tb_produto(nome, quantidade, preco, marca, modelo, categoria_id) values ("Talhadeira de aço", 15, 24.49, "Tramontina", "3/4 x 13 polegadas", 3);
insert into tb_produto(nome, quantidade, preco, marca, modelo, categoria_id) values ("Cotovelo", 80, 1.05, "Tigre", "90° Soldável 25mm", 2);
insert into tb_produto(nome, quantidade, preco, marca, modelo, categoria_id) values ("Corante Branco", 23, 7.85, "Suvinil", "50ml", 4);
insert into tb_produto(nome, quantidade, preco, marca, modelo, categoria_id) values ("Fita dupla face", 30, 19.69, "Tigre", "12mm x 2m", 6);
insert into tb_produto(nome, quantidade, preco, marca, modelo, categoria_id) values ("Pincel", 60, 45, "Tigre", "Kit Trincha cerda mista", 5);
insert into tb_produto(nome, quantidade, preco, marca, modelo, categoria_id) values ("Rolo", 17, 5.29, "Tigre", "Espuma 9cm", 5);
insert into tb_produto(nome, quantidade, preco, marca, modelo, categoria_id) values ("Bandeja de pintura", 36, 4.50, "Dexter", "15cm preta", 5);

select * from tb_produto;

select * from tb_produto where preco > 50.00;

select * from tb_produto where preco between 3.00 and 60.00;

select * from tb_produto where nome like "C%";

select tb_produto.nome, tb_produto.preco, tb_categoria.tipo as Seção
from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

select tb_produto.nome as Nome, tb_categoria.tipo as Seção, tb_categoria.id as Categoria_id
from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where tb_categoria.tipo = "Acessórios";