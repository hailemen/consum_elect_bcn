-- Carga de los datos para la tabla consumo del año 2019

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/temperaturas/temp_bcn_2019.csv'
INTO TABLE temperaturas
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(fecha, id_ciudad, tmin, tmax, tmed, prec, hrmed, vmed)
;

-- Carga de los datos para la tabla consumo del año 2020

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/temperaturas/temp_bcn_2020.csv'
INTO TABLE temperaturas
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(fecha, id_ciudad, tmin, tmax, tmed, prec, hrmed, vmed)
;

-- Carga de los datos para la tabla consumo del año 2021

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/temperaturas/temp_bcn_2021.csv'
INTO TABLE temperaturas
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(fecha, id_ciudad, tmin, tmax, tmed, prec, hrmed, vmed)
;

-- Carga de los datos para la tabla consumo del año 2022

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/temperaturas/temp_bcn_2022.csv'
INTO TABLE temperaturas
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(fecha, id_ciudad, tmin, tmax, tmed, prec, hrmed, vmed)
;

-- Carga de los datos para la tabla consumo del año 2023

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/temperaturas/temp_bcn_2023.csv'
INTO TABLE temperaturas
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(fecha, id_ciudad, tmin, tmax, tmed, prec, hrmed, vmed)
;

-- Carga de los datos para la tabla consumo del año 2024

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/temperaturas/temp_bcn_2024.csv'
INTO TABLE temperaturas
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(fecha, id_ciudad, tmin, tmax, tmed, prec, hrmed, vmed)
;

-- Carga de los datos para la tabla consumo del año 2025 Meses de enero a junio

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/temperaturas/temp_bcn_2025.csv'
INTO TABLE temperaturas
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(fecha, id_ciudad, tmin, tmax, tmed, prec, hrmed, vmed)
;

-- Carga de los datos para la tabla consumo del año 2025 del mes de julio

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/temperaturas/temp_bcn_2025_07.csv'
INTO TABLE temperaturas
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(fecha, id_ciudad, tmin, tmax, tmed, prec, hrmed, vmed)
;