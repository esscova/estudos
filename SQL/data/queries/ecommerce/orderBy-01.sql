-- CONSULTAS BASICAS: ORDER BY

-- Liste produtos da tabela products na ordem crescente com base no preço
SELECT *
FROM sales.products
ORDER BY price;

-- Liste os estados distintos da tabela customers na ordem crescente
SELECT DISTINCT state
FROM sales.customers
ORDER BY state;