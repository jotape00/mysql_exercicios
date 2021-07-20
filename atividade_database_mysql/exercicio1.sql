create database	db_empresa;

use db_empresa;

create table tb_funcionarios(
id bigint auto_increment,
nome varchar(255),
idade int,
salario decimal(7,2),
sexo varchar(255),
tel_numero bigint,
primary key(id)
);

insert into tb_funcionarios(nome, idade, salario, sexo, tel_numero) values ("Adilson Pereira", 33, 1750, "masculino", 11987654203);
insert into tb_funcionarios(nome, idade, salario, sexo, tel_numero) values ("Cleiton Rasta", 44, 3500, "masculino", 11965234200);
insert into tb_funcionarios(nome, idade, salario, sexo, tel_numero) values ("Creudete da Silva", 25, 2700, "feminino", 11940028922);
insert into tb_funcionarios(nome, idade, salario, sexo, tel_numero) values ("Severino Principe Isneipes ", 36, 2650, "masculino", 11965742030);
insert into tb_funcionarios(nome, idade, salario, sexo, tel_numero) values ("Carolineta Oliveira", 20, 1900, "feminino", 11995894030);

select * from tb_funcionarios where salario > 2000;

select * from tb_funcionarios where salario < 2000;

update tb_funcionarios set salario = 3200 where id = 3; 