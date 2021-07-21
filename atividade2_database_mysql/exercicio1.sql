create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
tipo_classe varchar(255),
mana boolean,
funcao varchar(255),
primary key (id)
);

insert into tb_classe(tipo_classe, mana, funcao) values ("Atirador", false, "Dano físico");
insert into tb_classe(tipo_classe, mana, funcao) values ("Mago", true, "Dano mágico");
insert into tb_classe(tipo_classe, mana, funcao) values ("Guerreiro", true, "Dano e resistência");
insert into tb_classe(tipo_classe, mana, funcao) values ("Assassino", false, "Dano puro");
insert into tb_classe(tipo_classe, mana, funcao) values ("Suporte", true, "Cura e apoio em time");

create table tb_personagem(
id bigint auto_increment,
nome varchar(255),
idade int,
ataque int,
vitalidade int,
inteligencia int,
tipo_arma varchar(255),
classe_id bigint,
primary key (id),
foreign key (classe_id) references tb_classe(id)
);

insert into tb_personagem (nome, idade, ataque, vitalidade, inteligencia, tipo_arma, classe_id) 
values ("Cleiton Knight", 28, 6200, 9000, 3000, "Espada e escudo", 3);

insert into tb_personagem (nome, idade, ataque, vitalidade, inteligencia, tipo_arma, classe_id) 
values ("AninhA KilleR", 17, 7800, 2000, 4100, "Garras e facas", 4);

insert into tb_personagem (nome, idade, ataque, vitalidade, inteligencia, tipo_arma, classe_id) 
values ("Soraka", 300, 1500, 6700, 10000, "Cajado e poções", 5);

insert into tb_personagem (nome, idade, ataque, vitalidade, inteligencia, tipo_arma, classe_id) 
values ("Sniper Americano", 30, 8400, 2000, 4300, "Fuzil de precisão", 1);

insert into tb_personagem (nome, idade, ataque, vitalidade, inteligencia, tipo_arma, classe_id) 
values ("Arqueiro verde", 24, 7100, 1800, 5000, "Arco e flecha", 1);

insert into tb_personagem (nome, idade, ataque, vitalidade, inteligencia, tipo_arma, classe_id) 
values ("Dumbledore", 70, 1950, 2000, 9500, "Grimório e varinha mágica", 2);

insert into tb_personagem (nome, idade, ataque, vitalidade, inteligencia, tipo_arma, classe_id) 
values ("Mestre dos Magos", 200, 1500, 1500, 10000, "Magias", 2);

insert into tb_personagem (nome, idade, ataque, vitalidade, inteligencia, tipo_arma, classe_id) 
values ("Zé Bardo", 44, 1000, 2300, 9200, "Harpa", 5);


select * from tb_personagem;

select nome, ataque from tb_personagem where ataque < 2000;

select nome, vitalidade from tb_personagem where vitalidade between 1000 and 2000;

select * from tb_personagem where nome like "%C%";

select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id;

select * from tb_personagem where classe_id = 2;

select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id  where tb_classe.tipo_classe = "Mago";