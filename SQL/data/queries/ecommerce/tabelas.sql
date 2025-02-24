-- Criação de tabela a partir de uma query
-- Crie uma tabela chamada customers_age com o id e a idade dos clientes. 
-- Chame-a de temp_tables.customers_age

SELECT
	customer_id,
	(current_date - birth_date)/365 AS idade_cliente
INTO temp_tables.customers_age
FROM sales.customers;

SELECT * FROM temp_tables.customers_age;