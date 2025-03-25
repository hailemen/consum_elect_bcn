

-- Carga de los datos para la tabla consumo del año 2019

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/consumo/consumo_2019.csv'
INTO TABLE consumo
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(fecha, id_codigo, id_sector, id_horario, consumo)
;

-- Carga de los datos para la tabla consumo del año 2020

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/consumo/consumo_2020.csv'
INTO TABLE consumo
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(fecha, id_codigo, id_sector, id_horario, consumo)
;

-- Carga de los datos para la tabla consumo del año 2021

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/consumo/consumo_2021.csv'
INTO TABLE consumo
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(fecha, id_codigo, id_sector, id_horario, consumo)
;

-- Carga de los datos para la tabla consumo del año 2022

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/consumo/consumo_2022.csv'
INTO TABLE consumo
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(fecha, id_codigo, id_sector, id_horario, consumo)
;

-- Carga de los datos para la tabla consumo del año 2023

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/consumo/consumo_2023.csv'
INTO TABLE consumo
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(fecha, id_codigo, id_sector, id_horario, consumo)
;

-- Carga de los datos para la tabla consumo del año 2024

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/consumo/consumo_2024.csv'
INTO TABLE consumo
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(fecha, id_codigo, id_sector, id_horario, consumo)
;