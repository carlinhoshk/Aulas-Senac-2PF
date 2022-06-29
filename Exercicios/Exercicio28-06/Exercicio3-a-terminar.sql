-- 28/06/2022 21:45

-- 1. Consultar c�digo da ag�ncia, n�mero, endere�o, cidade e o nome do gerente (Funcion�rio)
USE bank;

SELECT Agencias.idAgencia,
       Agencias.Numero,
	   Agencias.Endereco,
	   Agencias.Cidade,
  Funcionarios.Nome AS Gerente
FROM Agencias INNER JOIN Funcionarios
ON Funcionarios.idCargo = Agencias.idGerente

-- 2. Consultar nome, endere�o, cidade, estado, ddd, telefone dos funcion�rios e o nome de seus cargos ordenado pelo nome

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

-- 3. Mostrar o n�mero, data de vencimento e o tipo do cart�o

SELECT Cliente_Cartao.Numero,
	Cliente_Cartao.dataVencimento,
	tipoCartao.Descricao AS TipoCartao
	FROM Cliente_Cartao INNER JOIN tipoCartao
	ON tipoCartao.idTipoCartao = Cliente_Cartao.idTipoCartao


-- 4. Mostrar o c�digo da conta, data de abertura e o nome e telefone do funcion�rio que abriu a conta

SELECT Contas.idConta,
	   Contas.dataAbertura,
	   Funcionarios.Nome AS 'Nome Funcionario',
	   Funcionarios.Telefone AS 'Telefone Funcionario'
	   FROM Funcionarios INNER JOIN Contas
	   ON Funcionarios.idFuncionario = Contas.idFuncionarioAbertura

-- 5. Mostrar o n�mero da ag�ncia, cidade, estado, o c�digo do cliente e data de abertura da conta