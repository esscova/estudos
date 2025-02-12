--Conversão de texto em data
-- Corrija a query abaixo utilizando o operador ::
-- select '2021-10-01' - '2021-02-01'

SELECT '2021-10-01'::date - '2021-02-01'::date

-- Conversão de texto em número
-- Corrija a query abaixo utilizando o operador ::
-- select '100' - '10'

SELECT '100'::integer - '10'::integer

-- Conversão de número em texto
-- Corrija a query abaixo utilizando o operador ::
-- select replace(112122,'1','A')

SELECT REPLACE(112122::VARCHAR,'1','A')

-- Conversão de texto em data
-- Corrija a query abaixo utilizando a função CAST
-- select '2021-10-01' - '2021-02-01'

SELECT CAST('2021-10-01' AS DATE) - CAST('2021-02-01' AS DATE)

-- Agrupamento de dados com CASE WHEN
-- Calcule o nº de clientes que ganham abaixo de 5k, entre 5k e 10k, entre 10k e 15k e acima de 15k

WITH faixa_de_renda AS (
	SELECT 
		income,
		CASE
			WHEN income < 5000 THEN '0-500'
			WHEN income >= 5000 AND income <10_000 THEN '5000-10000'
			WHEN income > 10_000 AND income < 15_000 THEN '10000-15000'
			ELSE '15000+'
			END AS faixa_renda
	FROM sales.customers
)
SELECT 
	faixa_renda, 
	COUNT(*)
FROM faixa_de_renda
GROUP BY faixa_renda;

-- Tratamento de dados nulos com COALESCE
-- Crie uma coluna chamada populacao_ajustada na tabela temp_tables.regions e
-- preencha com os dados da coluna population, mas caso esse campo estiver nulo, 
-- preencha com a população média (geral) das cidades do Brasil
SELECT 
	*,
	COALESCE(population, (
		SELECT AVG(population)
		FROM temp_tables.regions
	)) AS populacao_ajustada
FROM temp_tables.regions;


-- (Exemplo 1) Corrija o primeiro elemento das queries abaixo utilizando os comandos 
-- de tratamento de texto para que o resultado seja sempre TRUE 

-- select 'São Paulo' = 'SÃO PAULO'
select upper('São Paulo') = 'SÃO PAULO'


-- select 'São Paulo' = 'são paulo'
select lower('São Paulo') = 'são paulo'


-- select 'SÃO PAULO     ' = 'SÃO PAULO'
select trim('SÃO PAULO     ') = 'SÃO PAULO'


-- select 'SAO PAULO' = 'SÃO PAULO'
select replace('SAO PAULO', 'SAO', 'SÃO') = 'SÃO PAULO'

