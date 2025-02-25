create database Projeto_Restaurante;

use Projeto_Restaurante;

create table Estoque_Ingredientes(
idingrediente int primary key auto_increment, 
ingrediente_nome varchar (60),
ingrediente_qtd int
);

create table Entrada(
identrada int primary key auto_increment, 
entrada_nome varchar (60),
entrada_preco decimal (10,2),
fk_idingrediente1 int,
fk_idingrediente2 int,
fk_idingrediente3 int,
fk_idingrediente4 int,
fk_idingrediente5 int,
fk_idingrediente6 int,
fk_idingrediente7 int,
foreign key(fk_idingrediente1) references Estoque_Ingredientes(idingrediente),
foreign key(fk_idingrediente2) references Estoque_Ingredientes(idingrediente),
foreign key(fk_idingrediente3) references Estoque_Ingredientes(idingrediente),
foreign key(fk_idingrediente4) references Estoque_Ingredientes(idingrediente),
foreign key(fk_idingrediente5) references Estoque_Ingredientes(idingrediente),
foreign key(fk_idingrediente6) references Estoque_Ingredientes(idingrediente),
foreign key(fk_idingrediente7) references Estoque_Ingredientes(idingrediente)
);

create table Prato_Principal(
idprincipal int primary key auto_increment, 
principal_nome varchar (60),
principal_preco decimal (10,2),
fk_idingrediente1 int,
fk_idingrediente2 int,
fk_idingrediente3 int,
fk_idingrediente4 int,
fk_idingrediente5 int,
fk_idingrediente6 int,
fk_idingrediente7 int,
foreign key(fk_idingrediente1) references Estoque_Ingredientes(idingrediente),
foreign key(fk_idingrediente2) references Estoque_Ingredientes(idingrediente),
foreign key(fk_idingrediente3) references Estoque_Ingredientes(idingrediente),
foreign key(fk_idingrediente4) references Estoque_Ingredientes(idingrediente),
foreign key(fk_idingrediente5) references Estoque_Ingredientes(idingrediente),
foreign key(fk_idingrediente6) references Estoque_Ingredientes(idingrediente),
foreign key(fk_idingrediente7) references Estoque_Ingredientes(idingrediente)
);

create table Guarnicao(
idguarnicao int primary key auto_increment, 
guarnicao_nome varchar (60),
guarnicao_preco decimal (10,2),
fk_idingrediente1 int,
fk_idingrediente2 int,
fk_idingrediente3 int,
fk_idingrediente4 int,
fk_idingrediente5 int,
fk_idingrediente6 int,
fk_idingrediente7 int,
foreign key(fk_idingrediente1) references Estoque_Ingredientes(idingrediente),
foreign key(fk_idingrediente2) references Estoque_Ingredientes(idingrediente),
foreign key(fk_idingrediente3) references Estoque_Ingredientes(idingrediente),
foreign key(fk_idingrediente4) references Estoque_Ingredientes(idingrediente),
foreign key(fk_idingrediente5) references Estoque_Ingredientes(idingrediente),
foreign key(fk_idingrediente6) references Estoque_Ingredientes(idingrediente),
foreign key(fk_idingrediente7) references Estoque_Ingredientes(idingrediente)
);

create table Sobremesa(
idsobremesa int primary key auto_increment, 
sobremesa_nome varchar (60),
sobremesa_preco decimal (10,2),
fk_idingrediente1 int,
fk_idingrediente2 int,
fk_idingrediente3 int,
fk_idingrediente4 int,
fk_idingrediente5 int,
fk_idingrediente6 int,
fk_idingrediente7 int,
foreign key(fk_idingrediente1) references Estoque_Ingredientes(idingrediente),
foreign key(fk_idingrediente2) references Estoque_Ingredientes(idingrediente),
foreign key(fk_idingrediente3) references Estoque_Ingredientes(idingrediente),
foreign key(fk_idingrediente4) references Estoque_Ingredientes(idingrediente),
foreign key(fk_idingrediente5) references Estoque_Ingredientes(idingrediente),
foreign key(fk_idingrediente6) references Estoque_Ingredientes(idingrediente),
foreign key(fk_idingrediente7) references Estoque_Ingredientes(idingrediente)
);

create table Bebidas(
idbebida int primary key auto_increment, 
bebida_nome varchar (60),
bebida_preco decimal (10,2),
fk_idingrediente int,
foreign key(fk_idingrediente) references Estoque_Ingredientes(idingrediente)
);

create table Cliente(
idcliente int primary key auto_increment,
cliente_nome varchar(100),
cliente_telefone varchar(11),
cliente_cpf varchar(11)
);

create table Mesa(
idmesa int primary key auto_increment, 
mesa_numero varchar (3),
mesa_lugares varchar (2)
);

create table Cargo(
idcargo int primary key auto_increment, 
cargo_nome varchar (100),
cargo_salario  decimal (10,2)
);

create table Funcionarios(
idfuncionario int primary key auto_increment, 
funcionario_nome varchar (100),
funcionario_cpf varchar (11),
fk_idcargo int,
foreign key(fk_idcargo) references cargo (idcargo)
);

create table Pedidos(
idpedidos int primary key auto_increment,
fk_idcliente int,
fk_idfuncionario int,
fk_identrada int,
fk_idprincipal int,
fk_idguarnicao int,
fk_idsobremesa int,
fk_idbebida int,
foreign key (fk_idcliente) references cliente (idcliente),
foreign key(fk_idfuncionario) references funcionarios (idfuncionario),
foreign key(fk_identrada) references Entrada (identrada),
foreign key(fk_idprincipal) references Prato_principal (idprincipal),
foreign key(fk_idguarnicao) references guarnicao (idguarnicao),
foreign key(fk_idsobremesa) references sobremesa (idsobremesa),
foreign key(fk_idbebida) references bebidas (idbebida)
);

create table Pagamento(
idpagamento int primary key auto_increment, 
pagamento_valor decimal (10,2),
fk_idpedidos int,
fk_idcliente int,
foreign key (fk_idpedidos) references pedidos (idpedidos),
foreign key (fk_idcliente) references cliente (idcliente)
);

create table Mesa_Funcionario(
idmesafuncionario int primary key auto_increment,
fk_idfuncionario int,
fk_idmesa int,
foreign key (fk_idfuncionario) references funcionarios (idfuncionario),
foreign key (fk_idmesa) references mesa (idmesa)
);