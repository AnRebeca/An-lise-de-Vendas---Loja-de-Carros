# **Projeto: Análise de Vendas - Loja de Carros**

## **Descrição**

Este projeto simula a análise de vendas de uma loja de carros, utilizando **MySQL** como base de dados. Ele foi desenvolvido com técnicas de **analista de dados**, incluindo consultas agregadas, joins, filtros, ranking e indicadores de desempenho. O objetivo é fornecer insights estratégicos sobre vendas, clientes, vendedores e produtos da loja.

O projeto serve como um exemplo prático para **visualização de métricas de vendas**, identificação de padrões de consumo, análise de desempenho de vendedores e previsão de tendências de mercado.

---

## **Tecnologias**

* **MySQL**: para modelagem e consultas de dados.
* **SQL avançado**: joins, subqueries, CTEs, funções agregadas.
* Conceitos de **Data Analytics** aplicados: métricas, KPI’s, ranking e análise de tendências.

---

## **Modelo de Dados**

O projeto contém 5 tabelas principais:

1. **Clientes** – informações dos clientes.
2. **Carros** – catálogo de carros disponíveis e estoque.
3. **Vendedores** – equipe de vendas da loja.
4. **Vendas** – registro de cada venda realizada.
5. **Pagamentos** – detalhes das formas de pagamento.

**Relacionamentos principais:**

* Um cliente pode realizar várias vendas.
* Um vendedor pode efetuar várias vendas.
* Cada venda corresponde a um carro e um pagamento.

---

## **Funcionalidades**

O projeto permite realizar as seguintes análises:

* Total de vendas por vendedor.
* Total de vendas por cidade.
* Carro mais vendido.
* Média de vendas por cliente.
* Distribuição de formas de pagamento.
* Vendas mensais e tendências de faturamento.
* Análise de estoque de carros.

---

## **Instruções de Uso**

1. Clone o repositório:

```bash
git clone <URL_DO_REPOSITORIO>
```

2. Abra o MySQL e execute o script `create_tables.sql` para criar o banco e as tabelas.
3. Execute o script `insert_data.sql` para popular as tabelas com dados simulados.
4. Utilize os **SELECTs e consultas analíticas** do projeto para gerar relatórios e métricas.

---

## **Exemplos de Consultas**

```sql
-- Total de vendas por vendedor
SELECT v.nome AS vendedor, COUNT(*) AS total_vendas, SUM(ve.valor_total) AS faturamento
FROM Vendedores v
JOIN Vendas ve ON v.id_vendedor = ve.id_vendedor
GROUP BY v.id_vendedor, v.nome
ORDER BY faturamento DESC;

-- Carro mais vendido
SELECT ca.modelo, ca.marca, SUM(v.quantidade) AS total_vendido
FROM Carros ca
JOIN Vendas v ON ca.id_carro = v.id_carro
GROUP BY ca.id_carro, ca.modelo, ca.marca
ORDER BY total_vendido DESC
LIMIT 1;
```

---

## **Objetivo do Projeto**

Demonstrar habilidades de **modelagem de dados, SQL avançado e análise de vendas**, aplicáveis ao **mercado automotivo**. 

---


