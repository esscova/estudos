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