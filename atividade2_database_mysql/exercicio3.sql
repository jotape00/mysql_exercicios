create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(248),
fornecedor varchar(245),
fabricante varchar(211),
primary key (id)
);

insert into tb_categoria(descricao, fornecedor, fabricante) values ("Remédio", "Disamado", "Medley");
insert into tb_categoria(descricao, fornecedor, fabricante) values ("Higiene Bucal", "Claytons Distribuidora", "Colgate");
insert into tb_categoria(descricao, fornecedor, fabricante) values ("Cosméticos", "Importa Fácil", "Florus Brasil");
insert into tb_categoria(descricao, fornecedor, fabricante) values ("Vitaminas", "Marshal Nutri", "Sundown");
insert into tb_categoria(descricao, fornecedor, fabricante) values ("Higiene", "P&Drole", "Johnson & Johnson");

create table tb_produto(
id bigint auto_increment,
nome varchar(255),
valor decimal(5,2),
validade date,
funcao varchar(255),
receita boolean,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_produto(nome, valor, validade, funcao, receita, categoria_id) values ("Dorflex", 3.00, '2024-04-25', "Combate a Dor", false, 1); 
insert into tb_produto(nome, valor, validade, funcao, receita, categoria_id) values ("Nasonex", 9.99, '2023-05-25', "Reduze sintomas de rinite", false, 1); 
insert into tb_produto(nome, valor, validade, funcao, receita, categoria_id) values ("Rivotril", 24.90, '2024-06-25', "Antidepressivo/Ansiolítico", true, 1);
insert into tb_produto(nome, valor, validade, funcao, receita, categoria_id) values ("Cerave", 72.90, '2024-01-24', "Hidratante Corporal", false, 3);
insert into tb_produto(nome, valor, validade, funcao, receita, categoria_id) values ("Centrum", 59.90, '2026-06-25', "Suplemento nutricional", false, 4);
insert into tb_produto(nome, valor, validade, funcao, receita, categoria_id) values ("Base Vult", 40.99, '2026-12-25', "Base para Maquiagem", false, 2);
insert into tb_produto(nome, valor, validade, funcao, receita, categoria_id) values ("Batom Boca Rosa", 17.99, '2025-02-25', "Batom para Maquiagem", false, 2);
insert into tb_produto(nome, valor, validade, funcao, receita, categoria_id) values ("Escova de Dentes", 12.99, '2023-08-26', "Escova para Higiene Bucal", false, 5);

select * from tb_produto where valor > 50.00;

 select * from tb_produto where valor between 3.00 and 6.00;
 
 select * from tb_produto where nome like "b%";
 
 select tb_produto.nome, tb_produto.valor, tb_categoria.descricao, tb_categoria.fornecedor, tb_categoria.fabricante from  tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

select tb_produto.nome, tb_produto.valor, tb_produto.validade, tb_produto.funcao, tb_categoria.descricao, tb_categoria.fornecedor, tb_categoria.fabricante 
from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where tb_produto.categoria_id = 3;