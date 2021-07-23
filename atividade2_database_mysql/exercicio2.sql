create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
tipo_pizza varchar(255),
tamanho varchar(255),
borda boolean,
primary key (id)
);

insert into tb_categoria(tipo_pizza, tamanho, borda) values ("Doce", "Médio", false);
insert into tb_categoria(tipo_pizza, tamanho, borda) values ("Salgada", "Brotinho", true);
insert into tb_categoria(tipo_pizza, tamanho, borda) values ("Salgada", "Médio", true);
insert into tb_categoria(tipo_pizza, tamanho, borda) values ("Salgada", "Médio", false);
insert into tb_categoria(tipo_pizza, tamanho, borda) values ("Doce", "Brotinho", false);

create table tb_pizza(
id bigint auto_increment,
nome varchar(255),
sabor varchar(255),
preco decimal(6,2),
aberta_fechada varchar(255),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_pizza (nome, sabor, preco, aberta_fechada, categoria_id) 
values ("Napolitana", "mussarela, milho, ervilha, palmito e azeitonas", 33, "Aberta", 3);

insert into tb_pizza (nome, sabor, preco, aberta_fechada, categoria_id) 
values ("Prestigio", "chocolate e côco ralado", 28, "Aberta", 5);

insert into tb_pizza (nome, sabor, preco, aberta_fechada, categoria_id) 
values ("Quatro Queijos", "mussarela, provolone, parmesão e catupiry", 50, "Fechada", 4);

insert into tb_pizza (nome, sabor, preco, aberta_fechada, categoria_id) 
values ("Marguerita", "tomates, parmesão, manjericão, azeite de oliva e mussarela", 28, "Aberta", 2);

insert into tb_pizza (nome, sabor, preco, aberta_fechada, categoria_id) 
values ("Banana", "Creme de leite, bananas, açúcar de confeiteiro e canela", 34, "Aberta", 1);

insert into tb_pizza (nome, sabor, preco, aberta_fechada, categoria_id) 
values ("Camarão ao creme quatro queijos", "camarão ao molho branco, molho quatro queijos, creme de leite, catupiruy e mussarela", 62, "Aberta", 3);

insert into tb_pizza (nome, sabor, preco, aberta_fechada, categoria_id) 
values ("Lombo", "mussarela, lombo, champignon e catupiry", 50, "Fechada", 4);

insert into tb_pizza (nome, sabor, preco, aberta_fechada, categoria_id) 
values ("Tradicional", "presunto, tomates e mussarela", 28, "Aberta", 2);

select * from tb_pizza;

select * from tb_pizza where preco > 45;

select * from tb_pizza where preco between 29 and 60;

select * from tb_pizza where nome like "%C%";

select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;

-- seleção de todas as pizzas salgadas, independente do tamanho
select tb_pizza.categoria_id, tb_pizza.nome, tb_categoria.tamanho, tb_pizza.sabor, tb_categoria.tipo_pizza as tipo_da_pizza, tb_pizza.aberta_fechada 
from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id where tb_categoria.tipo_pizza = "Salgada";