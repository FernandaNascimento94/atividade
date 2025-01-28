create database if not exists atividade;

use atividade;
create table if not exists imovel
(
	id int not null auto_increment,
    rua varchar(50) not null,
    numero int(4) not null,
    bairro varchar(30) not null,
    cep varchar(8) not null,
    cidade varchar(50) not null,
    estado varchar(2) not null,
    valor decimal not null,
     primary key(id)
);

create table if not exists corretor
(
	id int not null auto_increment,
    nome varchar(100) not null,
    porcentagem_de_Comissão decimal(0,10) not null,
    primary key(id)
);

create table if not exists venda
(
	id int not null auto_increment,
    id_imovel int not null auto_increment,
    id_corretor int not null auto_increment,
    preco_Bruto decimal not null,
    primary key(id)
);