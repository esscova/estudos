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
SELECT UPPER('São Paulo') = 'SÃO PAULO'


-- select 'São Paulo' = 'são paulo'
SELECT LOWER('São Paulo') = 'são paulo'


-- select 'SÃO PAULO     ' = 'SÃO PAULO'
SELECT TRIM('SÃO PAULO     ') = 'SÃO PAULO'


-- select 'SAO PAULO' = 'SÃO PAULO'
SELECT REPLACE('SAO PAULO', 'SAO', 'SÃO') = 'SÃO PAULO'

-- Soma de datas utilizando INTERVAL
-- Calcule a data de hoje mais 10 unidades (dias, semanas, meses, horas)
SELECT current_date + 10;
SELECT (current_date + interval '10 weeks')::date;
SELECT (current_date + interval '10 months')::date;
SELECT current_date + interval '10 hours';

-- Diferença entre datas com operador de subtração (-) 
-- Calcule a diferença entre hoje e '2018-06-01', em dias, semanas, meses e anos.
SELECT (current_date - '2018-06-01');
SELECT (current_date - '2018-06-01')/7;
SELECT (current_date - '2018-06-01')/30;
SELECT (current_date - '2018-06-01')/365;


-- Truncagem de datas utilizando DATE_TRUNC
-- Calcule quantas visitas ocorreram por mês no site da empresa

SELECT -- contagem por dia
	visit_page_date, 
	COUNT(*)
FROM sales.funnel
GROUP BY visit_page_date
ORDER BY visit_page_date DESC;

SELECT -- contagem por mes
	DATE_TRUNC('month', visit_page_date)::date AS visit_page_month,
	COUNT(*)
FROM sales.funnel
GROUP BY visit_page_month
ORDER BY visit_page_month DESC;

-- Extração de unidades de uma data utilizando EXTRACT
-- Calcule qual é o dia da semana que mais recebe visitas ao site
SELECT 
	EXTRACT('dow' FROM visit_page_date) AS dia_da_semana,
	COUNT(*)
FROM sales.funnel
GROUP BY dia_da_semana
ORDER BY dia_da_semana DESC;

-- Crie uma função chamada DATEDIFF para calcular a diferença entre
-- duas datas em dias, semanas, meses, anos
CREATE FUNCTION datediff (unidade varchar, data_inicial date, data_final date)
RETURNS INTEGER
LANGUAGE SQL

AS

$$ 
	SELECT
		CASE 
			WHEN unidade in ('d', 'day', 'days') THEN (data_final - data_inicial)
			WHEN unidade in ('w', 'week', 'weeks') THEN (data_final - data_inicial)/7
			WHEN unidade in ('m', 'month', 'months') THEN (data_final - data_inicial)/30
			WHEN unidade in ('y', 'year', 'years') THEN (data_final - data_inicial)/365
			END AS diferenca
$$
-- chamando a função após declaração
SELECT datediff('years', '2021-02-04', current_date);