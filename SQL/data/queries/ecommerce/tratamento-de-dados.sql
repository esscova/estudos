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
