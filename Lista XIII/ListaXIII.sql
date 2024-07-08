USE exercicio13

--1)Apresentar marca e modelo de carro e a soma total da dist�ncia percorrida pelos carros,
--em viagens, de uma dada empresa, ordenado pela dist�ncia percorrida
SELECT car.marca, car.modelo, SUM(vi.distanciaPercorrida) AS distanciaTotal
FROM carro car, viagem vi
WHERE car.id = vi.idCarro
GROUP BY car.marca, car.modelo

--2)Apresentar nome das empresas cuja soma total da dist�ncia percorrida pelos carros,
--em viagens, � superior a 50000 km

SELECT em.nome
FROM empresa em, viagem vi, carro car
WHERE car.idEmpresa = em.id AND
    car.id = vi.idCarro
GROUP BY em.nome
HAVING SUM(vi.distanciaPercorrida) > 50000

--3)Apresentar nome das empresas cuja soma total da dist�ncia percorrida pelos carros
--e a media das dist�ncias percorridas por seus carros em viagens.
--A m�dia deve ser exibida em uma coluna chamada mediaDist e com 2 casas decimais apenas.
--Deve-se ordenar a sa�da pela m�dia descrescente
SELECT em.nome, SUM(vi.distanciaPercorrida) AS totalDist,
    CAST(AVG(vi.distanciaPercorrida) AS DECIMAL(10,2)) AS mediaDist
FROM empresa em, viagem vi, carro car
WHERE em.id = car.idEmpresa AND
    car.id = vi.idCarro
GROUP BY em.nome
ORDER BY mediaDist DESC

--4)Apresentar nome das empresas cujos carro percorreram a maior dist�ncia dentre as cadastradas

SELECT em.nome, MAX(vi.distanciaPercorrida) AS maxDistancia
FROM empresa em, carro car, viagem vi
WHERE em.id = car.idEmpresa AND
    car.id = vi.idCarro
GROUP BY em.nome

--5)Apresentar nome das empresas e a quantidade de carros cadastrados para cada empresa
--Desde que a empresa tenha 3 ou mais carros
--A sa�da deve ser ordenada pela quantidade de carros, descrescente

SELECT em.nome, COUNT(car.idEmpresa) AS quantidadeCarros
FROM empresa em, carro car
WHERE em.id = car.idEmpresa
GROUP BY em.nome
HAVING COUNT(car.idEmpresa) >= 3
ORDER BY quantidadeCarros DESC

--6)Consultar Nomes das empresas que n�o tem carros cadastrados

SELECT nome
FROM empresa
    LEFT OUTER JOIN carro
    ON empresa.id = carro.idEmpresa
WHERE carro.idEmpresa IS NULL

--7)Consultar Marca e modelos dos carros que n�o fizeram viagens

SELECT marca, modelo
FROM carro
    LEFT OUTER JOIN viagem
    ON carro.id = viagem.idCarro
WHERE viagem.idCarro IS NULL

--8)Consultar quantas viagens foram feitas por cada carro (marca e modelo) de cada empresa
--em ordem ascendente de nome de empresa e descendente de quantidade

SELECT em.nome, car.marca, car.modelo, COUNT(vi.idCarro) AS quantidadeViagens
FROM empresa em, carro car, viagem vi
WHERE em.id = car.idEmpresa AND
    car.id = vi.idCarro
GROUP BY em.nome, car.marca, car.modelo
ORDER BY em.nome ASC, quantidadeViagens DESC

--9) Consultar o nome da empresa, a marca e o modelo do carro, a dist�ncia percorrida
--e o valor total ganho por viagem, sabendo que para dist�ncias inferiores a 1000 km, o valor � R$10,00
--por km e para viagens superiores a 1000 km, o valor � R$15,00 por km.

SELECT em.nome, car.marca, car.modelo, vi.distanciaPercorrida,
    CASE
		WHEN vi.distanciaPercorrida < 1000 THEN
		 10 * vi.distanciaPercorrida
		WHEN vi.distanciaPercorrida >= 1000 THEN
		 15 * vi.distanciaPercorrida
		 END AS valorTotal
FROM empresa em, carro car, viagem vi
WHERE em.id = car.idEmpresa AND
    car.id = vi.idCarro

--10) Apresentar o nome da empresa e a média de distância percorrida por seus carros. 
--A saída da média deve ter até 2 casas decimais e deve ser ordenada pela média da distância percorrida 

SELECT em.nome, CAST(AVG(vi.distanciaPercorrida) AS DECIMAL(10,2)) AS mediaDistancia
FROM empresa em, viagem vi, carro car
WHERE em.id = car.idEmpresa AND
    car.id = vi.idCarro
GROUP BY em.nome
ORDER BY mediaDistancia

--11) Apresentar marca e modelo do carro, al�m do nome da empresa e a data no formato (DD/MM/AAAA) 
--do carro que fez a última viagem dentre os cadastrados

SELECT car.marca, car.modelo, em.nome, CONVERT(VARCHAR, vi.data, 103) AS data
FROM carro car, empresa em, viagem vi
WHERE car.id = vi.idCarro AND
    em.id = car.idEmpresa AND
    vi.data IN (
	  SELECT MAX(vi.data)
    FROM viagem vi
	  )



--12) Considerando que hoje � 01/01/2023, apresentar a marca e o modelo do carro, al�m do nome da empresa e
--a quantidade de dias da viagem, dos carros que tiveram viagens nos �ltimos 3 meses. Ordenar (todos ascendentes) 
--por quantidade de dias, marca, modelo e nome da empresa.

SELECT car.marca, car.modelo, em.nome, DATEDIFF(DAY, vi.data, '01/01/2023') AS diasDesdeAViagem
FROM carro car, empresa em, viagem vi
WHERE car.id = vi.idCarro AND
    em.id = car.idEmpresa AND
    DATEDIFF(MONTH, vi.data, '01/01/2023') <= 3