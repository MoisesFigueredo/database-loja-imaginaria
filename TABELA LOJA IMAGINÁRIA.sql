create database loja_imaginaria
default character set utf8
default collate utf8_general_ci;

create Table clientes(
    id_cliente int not null auto_increment,
    nome_cliente varchar(30) not null,
    nascimento date,
    endereco varchar (60),
    email varchar(50),
    telefone varchar(11) not null,
    primary key(id_cliente)
    )default charset = utf8;

create Table produtos(
    id_produto int not null auto_increment,
    nome_produto varchar(30) not null,
    preco decimal(10,2),
    primary key(id_produto)
    ) default charset = utf8;
    
create table pedidos(
    id_pedidos int not null auto_increment,
    data_pedido date,
    id_do_cliente int,
    status_pedido varchar(50),
    primary key (id_pedidos),
    foreign key (id_do_cliente) references clientes (id_cliente)
    )default charset = utf8;

create table itens_do_pedido(
    id_item_pedido int not null	auto_increment,
    id_pedido int,
    id_produto int,
    quantidade int not null,
    preco_unitario decimal(10,2),
    primary key (id_item_pedido),
    foreign key(id_pedido) references pedidos(id_pedidos),
	foreign key(id_produto) references produtos(id_produto)
    )default charset = utf8;
    
    


	


    
