-- Aula 2 /24/06/2022
-- 19:57

USE bank;

SELECT * 
FROM Clientes;

SELECT Nome, Email, Renda
FROM Clientes;

SELECT *
FROM tipoCartao;

SELECT *
 FROM Clientes              -- se eu colocar ";" a linha a baixo cancela
 WHERE Cidade = 'São Paulo'
 ;

 SELECT * 
 FROM Clientes
 WHERE DDD = 19

 SELECT *
	FROM CLientes
	WHERE renda >= 3000;

SELECT *
	FROM Clientes
	WHERE Cidade <> 'valinhos'

-- Pesuisar na tablea Agencias, de agencia numero 453

SELECT *
	FROM Agencias
	WHERE numero = 453

SELECT *
	FROM logTransferencias
	WHERE Aprovado = 1
	AND 
	idTipoTransferencia =2

SELECT *
	FROM logTransferencias
	WHERE valor >= 1000
	AND
	Valor <= 1500

SELECT *
	FROM logTransferencias
	WHERE Valor BETWEEN 1000 AND 1500

SELECT *
	FROM logTransferencias
	WHERE idTipoTransferencia = 1
	OR
	Aprovado = 0;



SELECT * 
	FROM logTransferencias
	WHERE idContaCreditada = 1701
	OR
	idContaCreditada = 1999
	OR
	idContaCreditada = 911
	OR
	idContaCreditada = 705

SELECT * 
	FROM logTransferencias
	WHERE idContaCreditada IN(1701, 1999, 911, 705)


SELECT *
	FROM Funcionarios
	WHERE Nome LIKE 'al%'

SELECT *
	FROM Funcionarios
	WHERE Nome LIKE 'B%F%'

SELECT *
	FROM Funcionarios
	WHERE Telefone LIKE '9%'


SELECT *
	FROM logTransferencias
	ORDER BY Valor DESC

SELECT * 
	FROM Clientes
	WHERE Nome like 'A%'
	ORDER BY NOME

SELECT TOP 10 *
	FROM logTransferencias
	ORDER BY Valor DESC

SELECT TOP 10 PERCENT * 
	FROM logTransferencias

-- 22:02 24/06/2022
-- Exercicio 1.	Mostrar todos as informações dos tipos de cartões.


USE bank;

SELECT *
	FROM tipoCartao

-- Exercicio 2 Mostrar todas as informações das bandeiras.

SELECT *
	FROM tipocartao

-- Exercicio 3 Mostre o nome, ddd, telefone e e-mail dos clientes.

SELECT nome,ddd,telefone,email
	FROM Clientes

-- Exercicio 4 Mostrar o número das agências, endereço, cidade e estado.


SELECT Numero, Endereco, cidade, estado
	FROM Agencias


-- Exercicio 5 Mostrar todos os clientes que moram em Valinhos

SELECT cidade, idCliente, Nome
	FROM Clientes
	WHERE cidade = 'Valinhos'

-- Exercicio 6 Mostre as contas abertas no dia 13/10/2011
SELECT idConta, dataAbertura
	FROM Contas
	WHERE dataAbertura > '13/10/2011'

-- Exercicio 7 Mostre os clientes que possuem a renda maior ou igual a R$2.000,00.

SELECT Nome, Renda
	FROM Clientes
	WHERE Renda >= 2000

