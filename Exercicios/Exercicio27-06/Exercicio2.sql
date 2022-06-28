-- 27/06/2022 -- 20:27

-- Exercicio 2

USE bank;

-- 1. Mostre a quantidade de agencias por cidade

SELECT Cidade,
	COUNT(*) AS 'Quantidade De Cidade'
	FROM Agencias
	GROUP BY Cidade

-- 2. Mostre a média de renda dos clientes na cidade de São Paulo

SELECT Cidade,
	AVG(Renda) As 'média de renda'
	FROM Clientes
	WHERE Cidade = 'São Paulo'
	GROUP BY Cidade

-- 3. Mostre a média de renda dos clientes por cidade

SELECT Cidade,
	AVG(Renda) as 'Média de Renda'
	FROM Clientes
	GROUP BY Cidade

-- 4. Mostre a média de limite das pessoas que possuem talão de cheque

SELECT 
	AVG(Limite) AS 'média de limite'
	FROM Contas


-- 5. Mostre o maior e menor valor de Anuidade dos cartões de crédito

SELECT 
	MAX(Anuidade) as 'Maior Anuidade',
	MIN(Anuidade) as 'Menor Anuidade'
	FROM tipoCartao


