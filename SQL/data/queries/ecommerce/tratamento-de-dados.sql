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