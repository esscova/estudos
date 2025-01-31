-- DESAFIO JOINS

-- Identifique quais as marcas de veículo mais visitada na tabela sales.funnel
SELECT * FROM sales.products;
SELECT 
	pro.brand,
	COUNT(*) as visitas
FROM sales.funnel as fun
LEFT JOIN sales.products as pro
ON fun.product_id = pro.product_id
GROUP BY pro.brand
ORDER BY visitas DESC;
-- Identifique quais as lojas de veículo mais visitadas na tabela sales.funnel
SELECT * FROM sales.stores;
SELECT * FROM sales.funnel;

SELECT 
	sto.store_name,
	COUNT(*) AS visitas
FROM sales.funnel as fun
LEFT JOIN sales.stores as sto
ON fun.store_id = sto.store_id
GROUP BY sto.store_name
ORDER BY visitas DESC;

-- Identifique quantos clientes moram em cada tamanho de cidade (o porte da cidade
-- consta na coluna "size" da tabela temp_tables.regions)
SELECT * FROM temp_tables.regions;

SELECT 
	reg.size,
	COUNT(*) as contagem
FROM sales.customers as cus
LEFT JOIN temp_tables.regions as reg
ON LOWER(cus.city) = LOWER(reg.city)
AND LOWER(cus.state) = LOWER(reg.state)
GROUP BY reg.size
ORDER BY contagem;

