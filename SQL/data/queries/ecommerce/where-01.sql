-- CONSULTAS BÁSICAS: WHERE

-- Liste os emails dos clientes da nossa base que moram no estado de Santa Catarina
SELECT email, state
FROM sales.customers
WHERE state = 'SC';

-- Liste os emails dos clientes da nossa base que moram no estado de Santa Catarina
-- ou Mato Grosso do Sul
SELECT *
FROM sales.customers
WHERE state = 'SC' or state = 'MS';

-- Liste os emails dos clientes da nossa base que moram no estado de Santa Catarina 
-- ou Mato Grosso do Sul e que tem mais de 30 anos
SELECT *
FROM sales.customers
WHERE (state='SC' or state='MS') and (birth_date < '19950124');