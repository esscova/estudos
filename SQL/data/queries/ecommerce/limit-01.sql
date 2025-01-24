-- CONSULTAS BASICAS: LIMIT

-- Liste as 10 primeiras linhas da tabela funnel utilizando o LIMIT
SELECT *
FROM sales.funnel
LIMIT 10;

-- Liste os 10 produtos mais caros da tabela products com o comando LIMIT
SELECT *
FROM sales.products
ORDER BY price DESC
LIMIT 10