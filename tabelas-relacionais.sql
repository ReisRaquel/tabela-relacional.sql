

create table clientes(
 id INT IDENTITY (1,1) PRIMARY KEY,
 nome VARCHAR(20),
 telefone VARCHAR(40),
 endereço VARCHAR(40),
 email VARCHAR(50)
);


CREATE TABLE Pedidos (
   id INT IDENTITY (1,1) PRIMARY KEY,
   valor_total DECIMAL(10,2),
   data_compra DATE,
   cliente_id INT,
   FOREIGN KEY (cliente_id) REFERENCES Clientes(id)
);

CREATE TABLE Produtos (
   id INT IDENTITY (1,1) PRIMARY KEY,
   nome VARCHAR(20),
   descricao VARCHAR(40),
   valor DECIMAL (10,2),
   quantidade_estoque DECIMAL (10,2),
   cliente_id INT,
   FOREIGN KEY (cliente_id) REFERENCES Clientes(id)
);

create table pedidos_produtos(
 id INT IDENTITY (1,1) PRIMARY KEY,
 data_compra DATE,
 valor_vendido DECIMAL (10,2),
 quantidade_vendida DECIMAL (10,2),
 id_pedidos int,
 id_produtos int,
 foreign key(id_pedidos) references Pedidos(id),
 foreign key(id_produtos) references produtos(id)
);
