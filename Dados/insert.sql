-- Clientes
INSERT INTO Clientes (nome, email, telefone, cidade, estado, data_cadastro) VALUES
('João Silva', 'joao@email.com', '11999999999', 'São Paulo', 'SP', '2023-01-15'),
('Maria Santos', 'maria@email.com', '11988888888', 'Rio de Janeiro', 'RJ', '2023-03-22'),
('Pedro Lima', 'pedro@email.com', '21977777777', 'Belo Horizonte', 'MG', '2023-05-10');

-- Carros
INSERT INTO Carros (modelo, marca, ano, preco, estoque) VALUES
('Civic', 'Honda', 2022, 120000.00, 5),
('Corolla', 'Toyota', 2023, 130000.00, 3),
('Onix', 'Chevrolet', 2022, 80000.00, 10);

-- Vendedores
INSERT INTO Vendedores (nome, email, telefone, data_admissao) VALUES
('Carlos Pereira', 'carlos@email.com', '11966666666', '2022-01-10'),
('Fernanda Souza', 'fernanda@email.com', '21955555555', '2021-06-15');

-- Vendas
INSERT INTO Vendas (id_cliente, id_carro, id_vendedor, data_venda, quantidade, valor_total) VALUES
(1, 1, 1, '2023-07-01', 1, 120000.00),
(2, 2, 2, '2023-07-05', 1, 130000.00),
(3, 3, 1, '2023-07-10', 2, 160000.00);

-- Pagamentos
INSERT INTO Pagamentos (id_venda, forma_pagamento, parcelas, valor_pago, data_pagamento) VALUES
(1, 'À vista', 1, 120000.00, '2023-07-01'),
(2, 'Parcelado', 12, 130000.00, '2023-07-05'),
(3, 'Parcelado', 10, 160000.00, '2023-07-10');
