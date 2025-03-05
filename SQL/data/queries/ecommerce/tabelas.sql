/*
	EXERCICIO 01
	- Criação de tabela a partir de uma query
	- Crie uma tabela chamada customers_age com o id e a idade dos clientes. 
	- Chame-a de temp_tables.customers_age
*/

SELECT
	customer_id,
	(current_date - birth_date)/365 AS idade_cliente
INTO temp_tables.customers_age
FROM sales.customers;

SELECT * FROM temp_tables.customers_age;

/*
	EXERCICIO 02
	- Criação de tabela a partir do zero
	- Crie uma tabela com a tradução dos status profissionais dos clientes. 
	- Chame-a de temp_tables.profissoes
*/

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

/*
	EXERCICIO 03
	- Deleção de tabelas
	- Delete a tabela temp_tables.profissoes
*/

DROP TABLE temp_tables.profissoes;

/*
	EXERCICIO 04
	- Inserção de linhas
	- Insira os status 'desempregado(a)' e 'estagiário(a)' na temp_table.profissoes
*/

-- recriando profissoes 
CREATE TABLE temp_tables.profissoes(
	professional_status VARCHAR,
	status_profissional VARCHAR
);
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

-- iniciando inserçoes
INSERT INTO temp_tables.profissoes
(professional_status, status_profissional)
VALUES
	('unemployed', 'desempregado(a)'),
	('trainee', 'estagiario(a)');

-- visualizando 
SELECT * FROM temp_tables.profissoes;

/*
	EXERCICIO 05
	- Atualização de linhas
	- Corrija a tradução de 'estagiário(a)' de 'trainee' para 'intern' 
*/

UPDATE temp_tables.profissoes
SET professional_status = 'intern'
WHERE status_profissional = 'estagiario(a)';

-- visualizando 
SELECT * FROM temp_tables.profissoes;

/*
	EXERCICIO 06
	- Deleção de linhas
	- Delete as linhas dos status 'desempregado(a)' e 'estagiário(a)'
*/

DELETE FROM temp_tables.profissoes
WHERE 
	status_profissional = 'desempregado(a)'
	OR
	status_profissional = 'estagiario(a)';

-- visualizando 
SELECT * FROM temp_tables.profissoes;

/*
	EXERCÍCIO 07
	- Inserção de Colunas
	- Insira uma coluna na tabela sales.customers com a idade do cliente
*/

ALTER TABLE sales.customers
ADD customer_age INT;

-- visualizando
SELECT * FROM sales.customers LIMIT 3;

-- populando atributo
UPDATE sales.customers
SET customer_age = (current_date - birth_date)/365
WHERE TRUE;

/*
	EXERCICIO 08
	- Alteração do tipo da coluna
	- Altere o tipo da coluna customer_age de inteiro para varchar
*/

ALTER TABLE sales.customers
ALTER COLUMN customer_age TYPE VARCHAR;

-- visualizando
SELECT * FROM sales.customers LIMIT 5;

/*
	EXERCICIO 09
	- Alteração do nome da coluna
	- Renomeie o nome da coluna "customer_age" para "age"
*/

ALTER TABLE sales.customers
RENAME COLUMN customer_age TO age;

-- visualizando
SELECT * FROM sales.customers LIMIT 5;

/*
	EXERCICIO 10
	- Deleção de coluna
	- Delete a coluna "age"
*/

ALTER TABLE sales.customers
DROP COLUMN age;

-- visualizando
SELECT * FROM sales.customers LIMIT 5;