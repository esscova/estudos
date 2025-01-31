-- COMANDOS BÁSICOS COM SELECT

-- Liste os e-mails dos clientes da tabela sales.customers
SELECT email
FROM sales.customers;

-- Liste os emails e nomes dos clientes da tabela sales.customers
SELECT email, first_name, last_name
FROM sales.customers;

-- Liste todos as informações dos clientes da tabela sales.customers
SELECT *
FROM sales.customers;

-- COMANDOS BASICOS: DISTINCT

-- Liste as marcas de carro que constam na tabela products
SELECT brand
FROM sales.products;

-- Liste as marcas de carro distintas que constam na tabela products
SELECT DISTINCT brand
FROM sales.products;

-- Liste as marcas e anos de modelo distintos que constam na tabela products
SELECT DISTINCT brand, model_year
FROM sales.products

-- CONSULTAS BÁSICAS: WHERE

-- Liste os emails dos clientes da nossa base que moram no estado de Santa Catarina
SELECT email, state
FROM sales.customers
WHERE state = 'SC';

-- Liste os emails dos clientes da nossa base que moram no estado de Santa Catarina
-- ou Mato Grosso do Sul
SELECT *
FROM sales.customers
WHERE state = 'SC' or state = 'MS';

-- Liste os emails dos clientes da nossa base que moram no estado de Santa Catarina 
-- ou Mato Grosso do Sul e que tem mais de 30 anos
SELECT *
FROM sales.customers
WHERE (state='SC' or state='MS') and (birth_date < '19950124');

-- CONSULTAS BASICAS: ORDER BY

-- Liste produtos da tabela products na ordem crescente com base no preço
SELECT *
FROM sales.products
ORDER BY price;

-- Liste os estados distintos da tabela customers na ordem crescente
SELECT DISTINCT state
FROM sales.customers
ORDER BY state;

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
