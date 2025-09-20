SELECT v.nome AS vendedor, COUNT(*) AS total_vendas, SUM(ve.valor_total) AS faturamento
FROM Vendedores v
JOIN Vendas ve ON v.id_vendedor = ve.id_vendedor
GROUP BY v.id_vendedor, v.nome
ORDER BY faturamento DESC;
 
 SELECT c.cidade, COUNT(*) AS total_vendas, SUM(v.valor_total) AS faturamento
FROM Clientes c
JOIN Vendas v ON c.id_cliente = v.id_cliente
GROUP BY c.cidade
ORDER BY faturamento DESC;

SELECT ca.modelo, ca.marca, SUM(v.quantidade) AS total_vendido
FROM Carros ca
JOIN Vendas v ON ca.id_carro = v.id_carro
GROUP BY ca.id_carro, ca.modelo, ca.marca
ORDER BY total_vendido DESC
LIMIT 1;

SELECT AVG(total_vendas) AS media_vendas_por_cliente
FROM (
    SELECT id_cliente, SUM(valor_total) AS total_vendas
    FROM Vendas
    GROUP BY id_cliente
) AS vendas_cliente;

SELECT forma_pagamento, COUNT(*) AS total, SUM(valor_pago) AS faturamento
FROM Pagamentos
GROUP BY forma_pagamento;

SELECT DATE_FORMAT(data_venda, '%Y-%m') AS mes, SUM(valor_total) AS faturamento
FROM Vendas
GROUP BY mes
ORDER BY mes;
