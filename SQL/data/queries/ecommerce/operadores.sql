-- CONSULTAS COM OPERADORES

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