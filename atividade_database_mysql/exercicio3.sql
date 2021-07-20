create database db_escola;

use db_escola;

create table tb_estudantes(
id bigint auto_increment,
nome varchar(255),
idade int,
ra bigint,
nota decimal(4,2),
cpf varchar(255),
primary key(id)
);

insert into tb_estudantes(nome, idade, ra, nota, cpf) values ("Adilson Neves", 16, 8820215687, 7.5, 365242158);
insert into tb_estudantes(nome, idade, ra, nota, cpf) values ("Asa Akira", 14, 8820192645, 10, 256877422);
insert into tb_estudantes(nome, idade, ra, nota, cpf) values ("Samira da Silva", 17, 8820207412, 4.9, 785420148);
insert into tb_estudantes(nome, idade, ra, nota, cpf) values ("Anderson da Silva", 15, 8820184562, 9.0, 653214520);
insert into tb_estudantes(nome, idade, ra, nota, cpf) values ("Kassyane Kleptons", 16, 8820218564, 8.0, 645214759);
insert into tb_estudantes(nome, idade, ra, nota, cpf) values ("Janderson Souza", 15, 88202057843, 5.0, 153420165);
insert into tb_estudantes(nome, idade, ra, nota, cpf) values ("Edilson Capixaba", 16, 8820219173, 1.0, 856120357);
insert into tb_estudantes(nome, idade, ra, nota, cpf) values ("Vitória de Mesquita", 17, 8820203461, 9.9, 476589510);

select * from tb_estudantes where nota > 7;

select * from tb_estudantes where nota < 7;

update tb_estudantes set nota = 6.0 where id = 7;
