CREATE DATABASE exercicio13 
GO
USE exercicio13
GO
CREATE TABLE empresa
(
    id   INT         IDENTITY NOT NULL PRIMARY KEY,
    nome VARCHAR(50)
)
GO
CREATE TABLE carro
(
    id        INT         IDENTITY(1001,1) NOT NULL PRIMARY KEY,
    marca     VARCHAR(50),
    modelo    VARCHAR(50),
    idEmpresa INT
        FOREIGN KEY (idEmpresa) REFERENCES empresa(id)
)
GO
CREATE TABLE viagem
(
    idCarro             INT          NOT NULL,
    distanciaPercorrida DECIMAL(7,2),
    data                DATETIME     NOT NULL
        PRIMARY KEY (idCarro, data)
        FOREIGN KEY (idCarro) REFERENCES carro(id)
)
GO
INSERT INTO empresa
    (nome)
VALUES
    ('Empresa 1'),
    ('Empresa 2'),
    ('Empresa 3'),
    ('Empresa 4'),
    ('Empresa 5'),
    ('Empresa 6')
GO
INSERT INTO carro
    (idEmpresa, marca, modelo)
VALUES
    (1, 'Fiat', 'Uno'),
    (1, 'Renault', 'Sandero'),
    (1, 'Chevrolet', 'Celta'),
    (1, 'Fiat', 'Palio'),
    (1, 'Peugeot', '307'),
    (1, 'Renault', 'Duster'),
    (2, 'Fiat', 'Bravo'),
    (2, 'Renault', 'Logan'),
    (4, 'Peugeot', '207'),
    (4, 'Renault', 'Duster'),
    (6, 'Chevrolet', 'Celta'),
    (6, 'Fiat', 'Doblo'),
    (6, 'Volksvagen', 'Jetta')
GO
INSERT INTO viagem
VALUES
    (1006, 97, CAST(N'2022-05-01' AS DATE)),
    (1005, 2090, CAST(N'2022-05-02' AS DATE)),
    (1005, 3387, CAST(N'2022-05-03' AS DATE)),
    (1005, 487, CAST(N'2022-05-04' AS DATE)),
    (1004, 3141, CAST(N'2022-05-05' AS DATE)),
    (1006, 1895, CAST(N'2022-05-06' AS DATE)),
    (1005, 3050, CAST(N'2022-05-07' AS DATE)),
    (1003, 1974, CAST(N'2022-05-08' AS DATE)),
    (1005, 1779, CAST(N'2022-05-09' AS DATE)),
    (1006, 1727, CAST(N'2022-05-10' AS DATE)),
    (1002, 641, CAST(N'2022-05-11' AS DATE)),
    (1004, 1577, CAST(N'2022-05-12' AS DATE)),
    (1003, 2697, CAST(N'2022-05-13' AS DATE)),
    (1005, 832, CAST(N'2022-05-14' AS DATE)),
    (1002, 2033, CAST(N'2022-05-15' AS DATE)),
    (1003, 1930, CAST(N'2022-05-16' AS DATE)),
    (1005, 2606, CAST(N'2022-05-17' AS DATE)),
    (1002, 1424, CAST(N'2022-05-18' AS DATE)),
    (1005, 2484, CAST(N'2022-05-19' AS DATE)),
    (1005, 2711, CAST(N'2022-05-20' AS DATE)),
    (1003, 3049, CAST(N'2022-05-21' AS DATE)),
    (1003, 2446, CAST(N'2022-05-22' AS DATE)),
    (1003, 1307, CAST(N'2022-05-23' AS DATE)),
    (1003, 778, CAST(N'2022-05-24' AS DATE)),
    (1003, 2202, CAST(N'2022-05-25' AS DATE)),
    (1004, 2571, CAST(N'2022-05-26' AS DATE)),
    (1005, 2736, CAST(N'2022-05-27' AS DATE)),
    (1003, 3128, CAST(N'2022-05-28' AS DATE)),
    (1002, 2513, CAST(N'2022-05-29' AS DATE)),
    (1006, 1201, CAST(N'2022-05-30' AS DATE)),
    (1002, 3319, CAST(N'2022-05-31' AS DATE)),
    (1006, 2755, CAST(N'2022-06-01' AS DATE)),
    (1004, 864, CAST(N'2022-06-02' AS DATE)),
    (1004, 1833, CAST(N'2022-06-03' AS DATE)),
    (1004, 1265, CAST(N'2022-06-04' AS DATE)),
    (1006, 1670, CAST(N'2022-06-05' AS DATE)),
    (1006, 3037, CAST(N'2022-06-06' AS DATE)),
    (1004, 3134, CAST(N'2022-06-07' AS DATE)),
    (1002, 358, CAST(N'2022-06-08' AS DATE)),
    (1003, 2531, CAST(N'2022-06-09' AS DATE)),
    (1004, 1515, CAST(N'2022-06-10' AS DATE)),
    (1005, 3461, CAST(N'2022-06-11' AS DATE)),
    (1001, 2963, CAST(N'2022-06-12' AS DATE)),
    (1003, 2240, CAST(N'2022-06-13' AS DATE)),
    (1004, 3403, CAST(N'2022-06-14' AS DATE)),
    (1001, 621, CAST(N'2022-06-15' AS DATE)),
    (1005, 1264, CAST(N'2022-06-16' AS DATE)),
    (1006, 1121, CAST(N'2022-06-17' AS DATE)),
    (1005, 88, CAST(N'2022-06-18' AS DATE)),
    (1006, 2721, CAST(N'2022-06-19' AS DATE)),
    (1001, 1146, CAST(N'2022-06-20' AS DATE)),
    (1005, 515, CAST(N'2022-06-21' AS DATE)),
    (1005, 3060, CAST(N'2022-06-22' AS DATE)),
    (1006, 641, CAST(N'2022-06-23' AS DATE)),
    (1004, 2037, CAST(N'2022-06-24' AS DATE)),
    (1006, 2595, CAST(N'2022-06-25' AS DATE)),
    (1001, 3064, CAST(N'2022-06-26' AS DATE)),
    (1002, 2551, CAST(N'2022-06-27' AS DATE)),
    (1005, 1380, CAST(N'2022-06-28' AS DATE)),
    (1001, 611, CAST(N'2022-06-29' AS DATE)),
    (1002, 2759, CAST(N'2022-06-30' AS DATE)),
    (1001, 537, CAST(N'2022-07-01' AS DATE)),
    (1003, 2581, CAST(N'2022-07-02' AS DATE)),
    (1004, 3289, CAST(N'2022-07-03' AS DATE)),
    (1005, 3335, CAST(N'2022-07-04' AS DATE)),
    (1004, 3273, CAST(N'2022-07-05' AS DATE)),
    (1005, 1736, CAST(N'2022-07-06' AS DATE)),
    (1006, 2259, CAST(N'2022-07-07' AS DATE)),
    (1006, 2269, CAST(N'2022-07-08' AS DATE)),
    (1002, 2881, CAST(N'2022-07-09' AS DATE)),
    (1005, 888, CAST(N'2022-07-10' AS DATE)),
    (1003, 476, CAST(N'2022-07-11' AS DATE)),
    (1006, 2944, CAST(N'2022-07-12' AS DATE)),
    (1002, 373, CAST(N'2022-07-13' AS DATE)),
    (1005, 1885, CAST(N'2022-07-14' AS DATE)),
    (1005, 3416, CAST(N'2022-07-15' AS DATE)),
    (1004, 1370, CAST(N'2022-07-16' AS DATE)),
    (1005, 560, CAST(N'2022-07-17' AS DATE)),
    (1002, 657, CAST(N'2022-07-18' AS DATE)),
    (1006, 297, CAST(N'2022-07-19' AS DATE)),
    (1001, 1661, CAST(N'2022-07-20' AS DATE)),
    (1005, 2218, CAST(N'2022-07-21' AS DATE)),
    (1003, 381, CAST(N'2022-07-22' AS DATE)),
    (1005, 3284, CAST(N'2022-07-23' AS DATE)),
    (1004, 771, CAST(N'2022-07-24' AS DATE)),
    (1002, 1583, CAST(N'2022-07-25' AS DATE)),
    (1005, 1841, CAST(N'2022-07-26' AS DATE)),
    (1005, 2210, CAST(N'2022-07-27' AS DATE)),
    (1001, 1512, CAST(N'2022-07-28' AS DATE)),
    (1004, 1913, CAST(N'2022-07-29' AS DATE)),
    (1003, 1065, CAST(N'2022-07-30' AS DATE)),
    (1006, 3109, CAST(N'2022-07-31' AS DATE)),
    (1005, 3393, CAST(N'2022-08-01' AS DATE)),
    (1003, 1791, CAST(N'2022-08-02' AS DATE)),
    (1004, 2652, CAST(N'2022-08-03' AS DATE)),
    (1002, 1588, CAST(N'2022-08-04' AS DATE)),
    (1004, 3154, CAST(N'2022-08-05' AS DATE)),
    (1005, 2322, CAST(N'2022-08-06' AS DATE)),
    (1005, 2750, CAST(N'2022-08-07' AS DATE)),
    (1006, 460, CAST(N'2022-08-08' AS DATE)),
    (1004, 465, CAST(N'2022-08-09' AS DATE)),
    (1006, 2459, CAST(N'2022-08-10' AS DATE)),
    (1006, 2354, CAST(N'2022-08-11' AS DATE)),
    (1006, 1320, CAST(N'2022-08-12' AS DATE)),
    (1001, 1478, CAST(N'2022-08-13' AS DATE)),
    (1003, 2736, CAST(N'2022-08-14' AS DATE)),
    (1004, 1908, CAST(N'2022-08-15' AS DATE)),
    (1005, 1823, CAST(N'2022-08-16' AS DATE)),
    (1002, 3202, CAST(N'2022-08-17' AS DATE)),
    (1001, 2952, CAST(N'2022-08-18' AS DATE)),
    (1002, 339, CAST(N'2022-08-19' AS DATE)),
    (1006, 1092, CAST(N'2022-08-20' AS DATE)),
    (1003, 1607, CAST(N'2022-08-21' AS DATE)),
    (1002, 991, CAST(N'2022-08-22' AS DATE)),
    (1001, 2123, CAST(N'2022-08-23' AS DATE)),
    (1001, 1963, CAST(N'2022-08-24' AS DATE)),
    (1001, 3359, CAST(N'2022-08-25' AS DATE)),
    (1006, 119, CAST(N'2022-08-26' AS DATE)),
    (1003, 1635, CAST(N'2022-08-27' AS DATE)),
    (1001, 364, CAST(N'2022-08-28' AS DATE)),
    (1001, 2672, CAST(N'2022-08-29' AS DATE)),
    (1005, 324, CAST(N'2022-08-30' AS DATE)),
    (1002, 1402, CAST(N'2022-08-31' AS DATE)),
    (1004, 2902, CAST(N'2022-09-01' AS DATE)),
    (1004, 1842, CAST(N'2022-09-02' AS DATE)),
    (1001, 1113, CAST(N'2022-09-03' AS DATE)),
    (1005, 373, CAST(N'2022-09-04' AS DATE)),
    (1002, 157, CAST(N'2022-09-05' AS DATE)),
    (1002, 1816, CAST(N'2022-09-06' AS DATE)),
    (1001, 2413, CAST(N'2022-09-07' AS DATE)),
    (1003, 1702, CAST(N'2022-09-08' AS DATE)),
    (1002, 1871, CAST(N'2022-09-09' AS DATE)),
    (1006, 3234, CAST(N'2022-09-10' AS DATE)),
    (1006, 3165, CAST(N'2022-09-11' AS DATE)),
    (1004, 360, CAST(N'2022-09-12' AS DATE)),
    (1004, 1491, CAST(N'2022-09-13' AS DATE)),
    (1006, 2653, CAST(N'2022-09-14' AS DATE)),
    (1002, 886, CAST(N'2022-09-15' AS DATE)),
    (1001, 1567, CAST(N'2022-09-16' AS DATE)),
    (1002, 2642, CAST(N'2022-09-17' AS DATE)),
    (1006, 1839, CAST(N'2022-09-18' AS DATE)),
    (1002, 3418, CAST(N'2022-09-19' AS DATE)),
    (1004, 1959, CAST(N'2022-09-20' AS DATE)),
    (1001, 540, CAST(N'2022-09-21' AS DATE)),
    (1003, 2510, CAST(N'2022-09-22' AS DATE)),
    (1002, 2916, CAST(N'2022-09-23' AS DATE)),
    (1001, 1519, CAST(N'2022-09-24' AS DATE)),
    (1006, 241, CAST(N'2022-09-25' AS DATE)),
    (1003, 728, CAST(N'2022-09-26' AS DATE)),
    (1003, 1511, CAST(N'2022-09-27' AS DATE)),
    (1004, 1738, CAST(N'2022-09-28' AS DATE)),
    (1002, 646, CAST(N'2022-09-29' AS DATE)),
    (1003, 253, CAST(N'2022-09-30' AS DATE)),
    (1006, 2714, CAST(N'2022-10-01' AS DATE)),
    (1001, 2114, CAST(N'2022-10-02' AS DATE)),
    (1004, 725, CAST(N'2022-10-03' AS DATE)),
    (1010, 348, CAST(N'2022-09-01' AS DATE)),
    (1008, 194, CAST(N'2022-09-02' AS DATE)),
    (1012, 1250, CAST(N'2022-09-03' AS DATE)),
    (1007, 1291, CAST(N'2022-09-04' AS DATE)),
    (1009, 1879, CAST(N'2022-09-05' AS DATE)),
    (1007, 2466, CAST(N'2022-09-06' AS DATE)),
    (1010, 900, CAST(N'2022-09-07' AS DATE)),
    (1011, 2743, CAST(N'2022-09-08' AS DATE)),
    (1011, 769, CAST(N'2022-09-09' AS DATE)),
    (1010, 3284, CAST(N'2022-09-10' AS DATE)),
    (1009, 811, CAST(N'2022-09-11' AS DATE)),
    (1010, 434, CAST(N'2022-09-12' AS DATE)),
    (1007, 1271, CAST(N'2022-09-13' AS DATE)),
    (1008, 1492, CAST(N'2022-09-14' AS DATE)),
    (1008, 3047, CAST(N'2022-09-15' AS DATE)),
    (1007, 2305, CAST(N'2022-09-16' AS DATE)),
    (1007, 2886, CAST(N'2022-09-17' AS DATE)),
    (1008, 3226, CAST(N'2022-09-18' AS DATE)),
    (1011, 1542, CAST(N'2022-09-19' AS DATE)),
    (1007, 2150, CAST(N'2022-09-20' AS DATE)),
    (1011, 1897, CAST(N'2022-09-21' AS DATE)),
    (1011, 3022, CAST(N'2022-09-22' AS DATE)),
    (1007, 3495, CAST(N'2022-09-23' AS DATE)),
    (1011, 365, CAST(N'2022-09-24' AS DATE)),
    (1007, 3265, CAST(N'2022-09-25' AS DATE)),
    (1011, 2938, CAST(N'2022-09-26' AS DATE)),
    (1012, 2136, CAST(N'2022-09-27' AS DATE)),
    (1008, 891, CAST(N'2022-09-28' AS DATE)),
    (1011, 833, CAST(N'2022-09-29' AS DATE)),
    (1009, 1528, CAST(N'2022-09-30' AS DATE)),
    (1008, 952, CAST(N'2022-10-01' AS DATE)),
    (1007, 2310, CAST(N'2022-10-02' AS DATE)),
    (1008, 1657, CAST(N'2022-10-03' AS DATE)),
    (1007, 2007, CAST(N'2022-10-04' AS DATE)),
    (1007, 2657, CAST(N'2022-10-05' AS DATE)),
    (1007, 1509, CAST(N'2022-10-06' AS DATE)),
    (1010, 737, CAST(N'2022-10-07' AS DATE)),
    (1008, 2156, CAST(N'2022-10-08' AS DATE)),
    (1008, 3263, CAST(N'2022-10-09' AS DATE)),
    (1007, 1329, CAST(N'2022-10-10' AS DATE)),
    (1007, 140, CAST(N'2022-10-11' AS DATE)),
    (1010, 1701, CAST(N'2022-10-12' AS DATE)),
    (1009, 3300, CAST(N'2022-10-13' AS DATE)),
    (1010, 1324, CAST(N'2022-10-14' AS DATE)),
    (1011, 1936, CAST(N'2022-10-15' AS DATE)),
    (1010, 2961, CAST(N'2022-10-16' AS DATE)),
    (1007, 781, CAST(N'2022-10-17' AS DATE)),
    (1012, 3296, CAST(N'2022-10-18' AS DATE)),
    (1007, 174, CAST(N'2022-10-19' AS DATE)),
    (1012, 2894, CAST(N'2022-10-20' AS DATE)),
    (1009, 2965, CAST(N'2022-10-21' AS DATE)),
    (1010, 452, CAST(N'2022-10-22' AS DATE)),
    (1012, 2077, CAST(N'2022-10-23' AS DATE)),
    (1009, 2581, CAST(N'2022-10-24' AS DATE)),
    (1011, 1503, CAST(N'2022-10-25' AS DATE)),
    (1008, 1382, CAST(N'2022-10-26' AS DATE)),
    (1012, 3379, CAST(N'2022-10-27' AS DATE)),
    (1010, 351, CAST(N'2022-10-28' AS DATE)),
    (1007, 553, CAST(N'2022-10-29' AS DATE)),
    (1011, 1660, CAST(N'2022-10-30' AS DATE)),
    (1008, 1045, CAST(N'2022-10-31' AS DATE)),
    (1008, 1919, CAST(N'2022-11-01' AS DATE)),
    (1010, 922, CAST(N'2022-11-02' AS DATE)),
    (1010, 2983, CAST(N'2022-11-03' AS DATE)),
    (1012, 1229, CAST(N'2022-11-04' AS DATE)),
    (1010, 3083, CAST(N'2022-11-05' AS DATE)),
    (1010, 1318, CAST(N'2022-11-06' AS DATE)),
    (1011, 3018, CAST(N'2022-11-07' AS DATE)),
    (1011, 2227, CAST(N'2022-11-08' AS DATE)),
    (1011, 3304, CAST(N'2022-11-09' AS DATE)),
    (1011, 2078, CAST(N'2022-11-10' AS DATE)),
    (1008, 3388, CAST(N'2022-11-11' AS DATE)),
    (1007, 1136, CAST(N'2022-11-12' AS DATE)),
    (1007, 2043, CAST(N'2022-11-13' AS DATE)),
    (1009, 2224, CAST(N'2022-11-14' AS DATE)),
    (1007, 1413, CAST(N'2022-11-15' AS DATE)),
    (1008, 496, CAST(N'2022-11-16' AS DATE)),
    (1008, 3370, CAST(N'2022-11-17' AS DATE)),
    (1008, 1524, CAST(N'2022-11-18' AS DATE)),
    (1008, 2996, CAST(N'2022-11-19' AS DATE)),
    (1007, 502, CAST(N'2022-11-20' AS DATE)),
    (1010, 2314, CAST(N'2022-11-21' AS DATE)),
    (1007, 1946, CAST(N'2022-11-22' AS DATE)),
    (1007, 1042, CAST(N'2022-11-23' AS DATE)),
    (1007, 141, CAST(N'2022-11-24' AS DATE)),
    (1011, 1967, CAST(N'2022-11-25' AS DATE)),
    (1012, 585, CAST(N'2022-11-26' AS DATE)),
    (1010, 737, CAST(N'2022-11-27' AS DATE)),
    (1010, 504, CAST(N'2022-11-28' AS DATE)),
    (1011, 2351, CAST(N'2022-11-29' AS DATE)),
    (1008, 1046, CAST(N'2022-11-30' AS DATE)),
    (1008, 3117, CAST(N'2022-12-01' AS DATE)),
    (1008, 229, CAST(N'2022-12-02' AS DATE)),
    (1008, 3079, CAST(N'2022-12-03' AS DATE)),
    (1011, 339, CAST(N'2022-12-04' AS DATE)),
    (1010, 2335, CAST(N'2022-12-05' AS DATE)),
    (1007, 3139, CAST(N'2022-12-06' AS DATE)),
    (1011, 1632, CAST(N'2022-12-07' AS DATE)),
    (1010, 3253, CAST(N'2022-12-08' AS DATE)),
    (1010, 265, CAST(N'2022-12-09' AS DATE))		
GO
SELECT *
FROM carro
SELECT *
FROM empresa
SELECT *
FROM viagem