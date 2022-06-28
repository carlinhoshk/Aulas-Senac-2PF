-- 27/06/2022 -- 20:27

-- Exercicio 2

USE bank;

-- 1. Mostre a quantidade de agencias por cidade

SELECT Cidade,
	COUNT(*) AS 'Quantidade De Cidade'
	FROM Agencias
	GROUP BY Cidade

-- 2. Mostre a m�dia de renda dos clientes na cidade de S�o Paulo

SELECT Cidade,
	AVG(Renda) As 'm�dia de renda'
	FROM Clientes
	WHERE Cidade = 'S�o Paulo'
	GROUP BY Cidade

-- 3. Mostre a m�dia de renda dos clientes por cidade

SELECT Cidade,
	AVG(Renda) as 'M�dia de Renda'
	FROM Clientes
	GROUP BY Cidade

-- 4. Mostre a m�dia de limite das pessoas que possuem tal�o de cheque

SELECT 
	AVG(Limite) AS 'm�dia de limite'
	FROM Contas


-- 5. Mostre o maior e menor valor de Anuidade dos cart�es de cr�dito

SELECT 
	MAX(Anuidade) as 'Maior Anuidade',
	MIN(Anuidade) as 'Menor Anuidade'
	FROM tipoCartao


