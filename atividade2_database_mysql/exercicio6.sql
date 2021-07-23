create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint auto_increment,
Assunto varchar(269),
Duração varchar(232),
nomeFornecedor varchar(213),
primary key (id)
);

insert into tb_categoria(Assunto, duração, nomeFornecedor) values ("Programação", "300 horas", "Professor Arthur Ramos");
insert into tb_categoria(Assunto, duração, nomeFornecedor) values ("Matemática", "30 horas", "Professoa Maria Clara");
insert into tb_categoria(Assunto, duração, nomeFornecedor) values ("Programação", "300 horas", "Professor Arthur Ramos");
insert into tb_categoria(Assunto, duração, nomeFornecedor) values ("Portugueês", "40 horas", "Professora Carla Aguiar");
insert into tb_categoria(Assunto, duração, nomeFornecedor) values ("Cinema", "1000 horas", "Professora Elisa Asta");


create table tb_produto(
id bigint auto_increment,
nomeCurso varchar(269),
valor decimal,
qualidadeVideo int,
qualidadeAudio int,
qualidadeConteudo int,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_produto(nomeCurso, valor, qualidadeVideo, qualidadeAudio, qualidadeConteudo, categoria_id) values ("Java Script básico ao Avançado", 300.00, 10, 10, 10, 1);
insert into tb_produto(nomeCurso, valor, qualidadeVideo, qualidadeAudio, qualidadeConteudo, categoria_id) values ("Calculos básico ao Avançado", 40.00, 7, 7, 10, 2);
insert into tb_produto(nomeCurso, valor, qualidadeVideo, qualidadeAudio, qualidadeConteudo, categoria_id) values ("MySQL para iniciantes", 60.00, 8, 9, 10, 1);
insert into tb_produto(nomeCurso, valor, qualidadeVideo, qualidadeAudio, qualidadeConteudo, categoria_id) values ("Verbos iniciantes", 30.00, 10, 10, 10, 4);
insert into tb_produto(nomeCurso, valor, qualidadeVideo, qualidadeAudio, qualidadeConteudo, categoria_id) values ("Atuação", 200.00, 10, 10, 10, 5);
insert into tb_produto(nomeCurso, valor, qualidadeVideo, qualidadeAudio, qualidadeConteudo, categoria_id) values ("Multiplicação", 40.00, 6, 7, 10, 2);
insert into tb_produto(nomeCurso, valor, qualidadeVideo, qualidadeAudio, qualidadeConteudo, categoria_id) values ("Atuação para iniciantes", 100.00, 10, 10, 10, 5);
insert into tb_produto(nomeCurso, valor, qualidadeVideo, qualidadeAudio, qualidadeConteudo, categoria_id) values ("Banco de Dados", 100.00, 10, 10, 10, 1);

select * from tb_produto where valor > 50.00;

select * from tb_produto where valor between 3.00 and 60.00;

select * from tb_produto where nomeCurso like "j%";

select tb_produto.nomeCurso, tb_produto.valor, tb_categoria.assunto, tb_categoria.duração, tb_categoria.nomeFornecedor from  tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

select tb_produto.nomeCurso, tb_produto.valor, tb_produto.qualidadeVideo, tb_produto.qualidadeAudio, tb_produto.qualidadeConteudo, tb_categoria.Assunto, tb_categoria.Duração, tb_categoria.nomeFornecedor 
from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where tb_categoria.Assunto = "Programação";