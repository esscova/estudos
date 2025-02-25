-- Criação de tabela a partir de uma query
-- Crie uma tabela chamada customers_age com o id e a idade dos clientes. 
-- Chame-a de temp_tables.customers_age

SELECT
	customer_id,
	(current_date - birth_date)/365 AS idade_cliente
INTO temp_tables.customers_age
FROM sales.customers;

SELECT * FROM temp_tables.customers_age;

-- Criação de tabela a partir do zero
-- Crie uma tabela com a tradução dos status profissionais dos clientes. 
-- Chame-a de temp_tables.profissoes

-- selecao dos dados
SELECT DISTINCT professional_status
FROM sales.customers;

-- criando tabela
CREATE TABLE temp_tables.profissoes(
	professional_status VARCHAR,
	status_profissional VARCHAR
);

-- populando
INSERT INTO temp_tables.profissoes(professional_status, status_profissional)
VALUES
	('freelancer', 'freelancer'),
	('retired', 'aposentado(a)'),
	('clt', 'clt'),
	('self_employed', 'autônomo(a)'),
	('other', 'outro'),
	('businessman', 'empresário(a)'),
	('civil_servant', 'funcionário público(a)'),
	('student', 'estudante');

-- consultando dados
SELECT *
FROM temp_tables.profissoes;