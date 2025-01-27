-- CONSULTAS COM OPERADORES

-- ARITMETICOS
-- Crie uma coluna contendo a idade do cliente da tabela sales.customers
SELECT 
	email,
	birth_date,
	(current_date - birth_date)/365 as idade_cliente
FROM sales.customers

-- Liste os 10 clientes mais novos da tabela customers
SELECT 
	email,
	birth_date,
	(current_date - birth_date)/365 as idade_cliente
FROM sales.customers
ORDER BY idade_cliente
LIMIT 10

-- Crie a coluna "nome_completo" contendo o nome completo do cliente
SELECT 
	first_name,
	last_name,
	first_name || ' ' || last_name as nome_completo
FROM sales.customers

-- COMPARACAO
-- Crie uma coluna que retorne TRUE sempre que um cliente for um profissional clt 
SELECT
	customer_id,
	first_name,
	professional_status,
	professional_status = 'clt' as cliente_clt
FROM sales.customers

-- LOGICOS
-- Selecione veículos que custam entre 100k e 200k na tabela products
SELECT *
FROM sales.products
WHERE price BETWEEN 100_000 AND 200_000;

-- Selecione veículos que custam abaixo de 100k ou acima 200k 
SELECT *
FROM sales.products
WHERE price NOT BETWEEN 100_000 AND 200_000;

-- Selecionar produtos que sejam da marca HONDA, TOYOTA ou RENAULT
SELECT *
FROM sales.products
WHERE brand IN ('HONDA', 'TOYOTA', 'RENAULT');

-- Selecione os primeiros nomes distintos da tabela customers que começam
-- com as iniciais ANA
SELECT DISTINCT first_name
FROM sales.customers
WHERE first_name 
LIKE 'ANA%';

-- Selecione os primeiros nomes distintos com iniciais 'ana' ignore case sensitive
SELECT DISTINCT first_name
FROM sales.customers
WHERE first_name ILIKE 'ana%';

-- Selecionar apenas as linhas que contém nulo no campo "population" na tabela
-- temp_tables.regions
SELECT *
FROM temp_tables.regions
WHERE population IS NULL;