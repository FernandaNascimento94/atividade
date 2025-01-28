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
    nome varchar(50) not null,
    porcentagem_de_comissao decimal not null,
	primary key(id)
);


create table if not exists venda
(
	id int not null auto_increment,
    id_imovel int not null,
    id_corretor int not null,
    preco_Bruto decimal not null,
    data_venda datetime default current_timestamp,
    custo_documentacao decimal not null,
    valor_comissao decimal not null,
    primary key(id),
	foreign key(id_imovel) references imovel(id),
	foreign key(id_corretor) references corretor(id)
);

INSERT INTO imovel (rua, numero, bairro, cep, cidade, estado, valor)
VALUES
('rua joaquim isidoro da silva', '17', 'vila claudete', '54519030', 'cabo de santo agostinho', 'PE', '50.500,00'),
('rua Santo aleixo', '15', 'garapu', '54518030', 'cabo de santo agostinho', 'PE', '54.540,00');

INSERT INTO corretor (nome, porcentagem_de_comissao)
VALUES
('Izaquiel', '0,10'),
('Ricardo', '0,10');

INSERT INTO venda (preco_bruto, custo_documentacao, valor_comissao)
VALUES
('50.500,00', '5.000,00', '5.500,00'),
('54.540,00', '5.000.00', '5.500,00');