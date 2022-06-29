-- 28/06/2022 21:45

-- 1. Consultar código da agência, número, endereço, cidade e o nome do gerente (Funcionário)
USE bank;

SELECT Agencias.idAgencia,
       Agencias.Numero,
	   Agencias.Endereco,
	   Agencias.Cidade,
  Funcionarios.Nome AS Gerente
FROM Agencias INNER JOIN Funcionarios
ON Funcionarios.idCargo = Agencias.idGerente

-- 2. Consultar nome, endereço, cidade, estado, ddd, telefone dos funcionários e o nome de seus cargos ordenado pelo nome

SELECT Funcionarios.Nome,
	   Funcionarios.Endereco,
	   Funcionarios.Cidade,
	   Funcionarios.Estado,
	   Funcionarios.Estado,
	   Funcionarios.DDD,
	   Funcionarios.Telefone,
	   Cargos.Descricao AS Cargos
	   FROM Funcionarios INNER JOIN Cargos
	   ON Funcionarios.idCargo = Cargos.idCargo

-- 3. Mostrar o número, data de vencimento e o tipo do cartão

SELECT Cliente_Cartao.Numero,
	Cliente_Cartao.dataVencimento,
	tipoCartao.Descricao AS TipoCartao
	FROM Cliente_Cartao INNER JOIN tipoCartao
	ON tipoCartao.idTipoCartao = Cliente_Cartao.idTipoCartao