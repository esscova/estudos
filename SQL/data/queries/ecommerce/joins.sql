-- Utilize o LEFT JOIN para fazer join entre as tabelas
-- temp_tables.tabela_1 e temp_tables.tabela_2
SELECT * FROM temp_tables.tabela_1;
SELECT * FROM temp_tables.tabela_2;

SELECT 
	t1.cpf, t1.name, t2.state
FROM temp_tables.tabela_1 as t1
LEFT JOIN temp_tables.tabela_2 as t2
ON  t1.cpf = t2.cpf; 

-- Utilize o INNER JOIN para fazer join entre as tabelas
-- temp_tables.tabela_1 e temp_tables.tabela_2
SELECT
	t1.cpf, t1.name, t2.state
FROM temp_tables.tabela_1 AS t1
INNER JOIN temp_tables.tabela_2 AS t2
ON t1.cpf = t2.cpf;

-- Utilize o RIGHT JOIN para fazer join entre as tabelas
-- temp_tables.tabela_1 e temp_tables.tabela_2
SELECT
	t2.cpf, t1.name, t2.state
FROM temp_tables.tabela_1 AS t1
RIGHT JOIN temp_tables.tabela_2 AS t2
ON t1.cpf = t2.cpf;

-- Utilize o FULL JOIN para fazer join entre as tabelas
-- temp_tables.tabela_1 e temp_tables.tabela_2
SELECT 
	t2.cpf, t1.name, t2.state
FROM temp_tables.tabela_1 as t1
FULL JOIN temp_tables.tabela_2 as t2
ON t1.cpf=t2.cpf;

-- Identifique qual é o status profissional mais frequente nos clientes 
-- que compraram automóveis no site
SELECT * FROM sales.customers;
SELECT * FROM sales.funnel;

SELECT
	cus.professional_status,
	COUNT(fun.paid_date) as pagamentos
FROM sales.funnel as fun
LEFT JOIN sales.customers as cus
ON fun.customer_id = cus.customer_id
GROUP BY cus.professional_status
ORDER BY pagamentos DESC;

-- Identifique qual é o gênero mais frequente nos clientes que compraram
-- automóveis no site. Obs: Utilizar a tabela temp_tables.ibge_genders
SELECT * 
FROM temp_tables.ibge_genders 
LIMIT 10;

SELECT 
	ibge.gender,
	COUNT(fun.paid_date)
FROM sales.funnel as fun
LEFT JOIN sales.customers as cus
ON fun.customer_id = cus.customer_id
LEFT JOIN temp_tables.ibge_genders as ibge
ON LOWER(cus.first_name) = ibge.first_name
GROUP BY ibge.gender;

-- Identifique de quais regiões são os clientes que mais visitam o site
-- Obs: Utilizar a tabela temp_tables.regions
SELECT * FROM temp_tables.regions;

SELECT 
	reg.region,
	COUNT(fun.visit_page_date) as visitas
FROM sales.funnel as fun
LEFT JOIN sales.customers as cus
ON fun.customer_id = cus.customer_id
LEFT JOIN temp_tables.regions as reg
ON LOWER(cus.city) = LOWER(reg.city)
AND LOWER(cus.state) = LOWER(reg.state)
GROUP BY reg.region
ORDER BY visitas DESC