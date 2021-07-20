create database db_ecommerce;

use db_ecommerce;

create table tb_produtos(
id bigint auto_increment,
nome varchar(255),
quantidade int,
preco decimal(8,2),
marca varchar(255),
cor varchar(255),
primary key(id)
);

insert into tb_produtos(nome, quantidade, preco, marca, cor) values ("Camiseta", 30, 45, "Lacoste", "verde");
insert into tb_produtos(nome, quantidade, preco, marca, cor) values ("Calça", 45, 60, "Calvin Klein", "preto");
insert into tb_produtos(nome, quantidade, preco, marca, cor) values ("Tênis", 20, 250, "Nike", "branco");
insert into tb_produtos(nome, quantidade, preco, marca, cor) values ("Televisão", 100, 5000, "LG", "cinza");
insert into tb_produtos(nome, quantidade, preco, marca, cor) values ("Celular", 50, 9000, "Apple", "dourado");
insert into tb_produtos(nome, quantidade, preco, marca, cor) values ("Cadeira gamer", 12, 900, "Redragon", "vermelha");
insert into tb_produtos(nome, quantidade, preco, marca, cor) values ("Notebook", 55, 12000, "Apple", "cinza");
insert into tb_produtos(nome, quantidade, preco, marca, cor) values ("Caderno", 80, 25, "Tilibra", "azul");

select * from tb_produtos where preco > 500;

select * from tb_produtos where preco < 500;

update tb_produtos set quantidade = 58 where id = 5;

