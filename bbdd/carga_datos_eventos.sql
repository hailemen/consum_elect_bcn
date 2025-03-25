-- Carga datos de la tabla eventos. Se realiza la carga de los datos mediante lotes al no ser exitosa la carga completa de los datos en una sola inserción.

START TRANSACTION;

-- INSERCIÓN DE DATOS POR LOTES. CRITERIO: AÑO.
-- PRIMER LOTE AÑO 2019

INSERT INTO eventos (fecha, id_ciudad, id_codigo_postal, id_sector, id_horario, id_consumo, id_temperatura)
SELECT 
    c.fecha,
    ci.id AS id_ciudad,
    cp.id AS id_codigo_postal,
    s.id AS id_sector,
    h.id AS id_horario,
    c.id AS id_consumo,
    t.id AS id_temperatura
FROM 
    consumo c
JOIN codigos_postales cp ON c.id_codigo = cp.id
JOIN ciudades ci ON cp.id_ciudad = ci.id
JOIN sectores s ON c.id_sector = s.id
JOIN horario h ON c.id_horario = h.id
JOIN temperaturas t ON c.fecha = t.fecha AND t.id_ciudad = ci.id
WHERE c.fecha BETWEEN '2019-01-01' AND '2019-12-31'
ORDER BY
	c.fecha ASC,
	cp.id ASC,
    s.id ASC,
    h.id ASC
;

-- SEGUNDO LOTE AÑO 2020

INSERT INTO eventos (fecha, id_ciudad, id_codigo_postal, id_sector, id_horario, id_consumo, id_temperatura)
SELECT 
    c.fecha,
    ci.id AS id_ciudad,
    cp.id AS id_codigo_postal,
    s.id AS id_sector,
    h.id AS id_horario,
    c.id AS id_consumo,
    t.id AS id_temperatura
FROM 
    consumo c
JOIN codigos_postales cp ON c.id_codigo = cp.id
JOIN ciudades ci ON cp.id_ciudad = ci.id
JOIN sectores s ON c.id_sector = s.id
JOIN horario h ON c.id_horario = h.id
JOIN temperaturas t ON c.fecha = t.fecha AND t.id_ciudad = ci.id
WHERE c.fecha BETWEEN '2020-01-01' AND '2020-12-31'
ORDER BY
	c.fecha ASC,
	cp.id ASC,
    s.id ASC,
    h.id ASC
;

-- TERCER LOTE AÑO 2021

INSERT INTO eventos (fecha, id_ciudad, id_codigo_postal, id_sector, id_horario, id_consumo, id_temperatura)
SELECT 
    c.fecha,
    ci.id AS id_ciudad,
    cp.id AS id_codigo_postal,
    s.id AS id_sector,
    h.id AS id_horario,
    c.id AS id_consumo,
    t.id AS id_temperatura
FROM 
    consumo c
JOIN codigos_postales cp ON c.id_codigo = cp.id
JOIN ciudades ci ON cp.id_ciudad = ci.id
JOIN sectores s ON c.id_sector = s.id
JOIN horario h ON c.id_horario = h.id
JOIN temperaturas t ON c.fecha = t.fecha AND t.id_ciudad = ci.id
WHERE c.fecha BETWEEN '2021-01-01' AND '2021-12-31'
ORDER BY
	c.fecha ASC,
	cp.id ASC,
    s.id ASC,
    h.id ASC
;

-- CUARTO LOTE AÑO 2022

INSERT INTO eventos (fecha, id_ciudad, id_codigo_postal, id_sector, id_horario, id_consumo, id_temperatura)
SELECT 
    c.fecha,
    ci.id AS id_ciudad,
    cp.id AS id_codigo_postal,
    s.id AS id_sector,
    h.id AS id_horario,
    c.id AS id_consumo,
    t.id AS id_temperatura
FROM 
    consumo c
JOIN codigos_postales cp ON c.id_codigo = cp.id
JOIN ciudades ci ON cp.id_ciudad = ci.id
JOIN sectores s ON c.id_sector = s.id
JOIN horario h ON c.id_horario = h.id
JOIN temperaturas t ON c.fecha = t.fecha AND t.id_ciudad = ci.id
WHERE c.fecha BETWEEN '2022-01-01' AND '2022-12-31'
ORDER BY
	c.fecha ASC,
	cp.id ASC,
    s.id ASC,
    h.id ASC
;

-- QUINTO LOTE AÑO 2023

INSERT INTO eventos (fecha, id_ciudad, id_codigo_postal, id_sector, id_horario, id_consumo, id_temperatura)
SELECT 
    c.fecha,
    ci.id AS id_ciudad,
    cp.id AS id_codigo_postal,
    s.id AS id_sector,
    h.id AS id_horario,
    c.id AS id_consumo,
    t.id AS id_temperatura
FROM 
    consumo c
JOIN codigos_postales cp ON c.id_codigo = cp.id
JOIN ciudades ci ON cp.id_ciudad = ci.id
JOIN sectores s ON c.id_sector = s.id
JOIN horario h ON c.id_horario = h.id
JOIN temperaturas t ON c.fecha = t.fecha AND t.id_ciudad = ci.id
WHERE c.fecha BETWEEN '2023-01-01' AND '2023-12-31'
ORDER BY
	c.fecha ASC,
	cp.id ASC,
    s.id ASC,
    h.id ASC
;

-- SEXTO LOTE AÑO 2024

INSERT INTO eventos (fecha, id_ciudad, id_codigo_postal, id_sector, id_horario, id_consumo, id_temperatura)
SELECT 
    c.fecha,
    ci.id AS id_ciudad,
    cp.id AS id_codigo_postal,
    s.id AS id_sector,
    h.id AS id_horario,
    c.id AS id_consumo,
    t.id AS id_temperatura
FROM 
    consumo c
JOIN codigos_postales cp ON c.id_codigo = cp.id
JOIN ciudades ci ON cp.id_ciudad = ci.id
JOIN sectores s ON c.id_sector = s.id
JOIN horario h ON c.id_horario = h.id
JOIN temperaturas t ON c.fecha = t.fecha AND t.id_ciudad = ci.id
WHERE c.fecha BETWEEN '2024-01-01' AND '2024-12-31'
ORDER BY
	c.fecha ASC,
	cp.id ASC,
    s.id ASC,
    h.id ASC
;

COMMIT;
