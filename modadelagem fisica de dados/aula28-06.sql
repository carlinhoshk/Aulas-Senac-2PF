-- Aula 28/06/2022

USE Bank

SELECT Funcionarios.Nome,
       Funcionarios.DDD,
  Funcionarios.Telefone,
  Cargos.Descricao AS Cargo
FROM Funcionarios INNER JOIN Cargos
ON Cargos.idCargo = Funcionarios.idCargo

SELECT cl.Nome,
       cl.Email,
  cl.DDD,
  cl.Telefone,
  co.dataAbertura,
  co.Limite,
  IIF(co.internetBanking=1,'Acesso ao Internet Banking','Não possui acesso') AS 'Internet Banking',
  IIF(co.talaoCheque=1,'Utiliza talão de cheque', 'Não utiliza talão de cheque') AS 'Talão de cheque'
FROM Clientes AS cl INNER JOIN Contas AS co
ON cl.idCliente = co.idCliente
WHERE cl.DDD = 19
ORDER BY co.Limite DESC

SELECT IIF(1=0, 'Verdadeiro', 'Falso')


SELECT f.Nome AS Gerente,
       f.DDD,
  f.Telefone,
  c.Descricao AS Cargo,
  a.Numero AS NumeroAgencia,
  a.Estado
FROM Funcionarios AS f INNER JOIN Cargos AS c
ON f.idCargo = c.idCargo
INNER JOIN Agencias AS a
ON a.idGerente = c.idCargo



SELECT * FROM Bandeiras
SELECT * FROM tipoCartao

INSERT INTO Bandeiras (Empresa)
VALUES('Elo')

INSERT INTO tipoCartao (Descricao, rendaMinima, Anuidade, Internacional)
VALUES('Bronze', 100.00, 0.00, 0)

INSERT INTO Bandeiras
VALUES('Alelo')


SELECT *
FROM Bandeiras
WHERE idBandeira = 4
OR idBandeira = 5


DELETE FROM Bandeiras
WHERE idBandeira IN (4,5)