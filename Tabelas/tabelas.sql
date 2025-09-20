CREATE DATABASE IF NOT EXISTS LojaCarros;
USE LojaCarros;

-- Tabela Clientes
CREATE TABLE Clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100),
    telefone VARCHAR(20),
    cidade VARCHAR(50),
    estado VARCHAR(50),
    data_cadastro DATE
);

-- Tabela Carros
CREATE TABLE Carros (
    id_carro INT AUTO_INCREMENT PRIMARY KEY,
    modelo VARCHAR(100),
    marca VARCHAR(50),
    ano INT,
    preco DECIMAL(10,2),
    estoque INT
);

-- Tabela Vendedores
CREATE TABLE Vendedores (
    id_vendedor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100),
    telefone VARCHAR(20),
    data_admissao DATE
);

-- Tabela Vendas
CREATE TABLE Vendas (
    id_venda INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    id_carro INT,
    id_vendedor INT,
    data_venda DATE,
    quantidade INT,
    valor_total DECIMAL(10,2),
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
    FOREIGN KEY (id_carro) REFERENCES Carros(id_carro),
    FOREIGN KEY (id_vendedor) REFERENCES Vendedores(id_vendedor)
);

-- Tabela Pagamentos
CREATE TABLE Pagamentos (
    id_pagamento INT AUTO_INCREMENT PRIMARY KEY,
    id_venda INT,
    forma_pagamento VARCHAR(50),
    parcelas INT,
    valor_pago DECIMAL(10,2),
    data_pagamento DATE,
    FOREIGN KEY (id_venda) REFERENCES Vendas(id_venda)
);
