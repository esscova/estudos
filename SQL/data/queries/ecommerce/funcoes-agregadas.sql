-- FUNCOES AGREGADAS

-- Conte todas as visitas realizadas ao site da empresa fictícia
SELECT COUNT(*)
FROM sales.funnel;

-- Conte todos os pagamentos registrados na tabela sales.funnel 
SELECT COUNT(paid_date)
FROM sales.funnel;

-- Conte todos os produtos distintos visitados em jan/21
SELECT COUNT(DISTINCT product_id)
FROM sales.funnel
WHERE visit_page_date BETWEEN '20210101' AND '20210131';

-- Calcule o preço mínimo, máximo e médio dos productos da tabela products
SELECT
	MIN(price) as preco_minimo,
	MAX(price) as preco_maximo,
	AVG(price) as preco_medio
FROM sales.products

-- Informe qual é o veículo mais caro da tabela products
SELECT *
FROM sales.products
WHERE price = (
	SELECT MAX(price)
	FROM sales.products
);

-- Calcule o nº de clientes da tabela customers por estado
SELECT 
	state,
	COUNT(*) as contagem
FROM sales.customers
GROUP BY state
ORDER BY contagem DESC;

-- Calcule o nº de clientes por estado e status profissional 
SELECT
	state,
	professional_status,
	COUNT (*) as contagem
FROM sales.customers
GROUP BY state, professional_status
ORDER BY contagem DESC;

-- Selecione os estados distintos na tabela customers utilizando o group by
SELECT state
FROM sales.customers
GROUP BY state;

-- Calcule o nº de clientes por estado filtrando apenas estados acima de 100 clientes
SELECT 
	state,
	COUNT(*) 
FROM sales.customers
GROUP BY state
HAVING COUNT(*) > 100;
	