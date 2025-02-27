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
	