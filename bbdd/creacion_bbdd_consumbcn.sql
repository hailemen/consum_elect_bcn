-- Crear base de datos
CREATE DATABASE IF NOT EXISTS consum_bcn;

USE consum_bcn;

-- Crear Tabla Ciudades

CREATE TABLE IF NOT EXISTS ciudades (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100)
);

-- Crear Tabla horarios
CREATE TABLE IF NOT EXISTS horario (
	id INT PRIMARY KEY AUTO_INCREMENT,
    horario VARCHAR(10),
    tramo VARCHAR(30)
);

-- Crear Tabla codigos
CREATE TABLE IF NOT EXISTS codigos_postales (
	id INT PRIMARY KEY AUTO_INCREMENT,
    id_ciudad INT NOT NULL,
    codigo_postal VARCHAR(5),
    barrio VARCHAR(100),
    CONSTRAINT fk_codigos_ciudad
        FOREIGN KEY (id_ciudad)
        REFERENCES ciudades(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

-- Crear tabla sectores
CREATE TABLE IF NOT EXISTS sectores (
	id INT PRIMARY KEY AUTO_INCREMENT,
    sector VARCHAR(20)
);

-- Crear tabla temperaturas
CREATE TABLE IF NOT EXISTS temperaturas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    fecha DATE NOT NULL,
    id_ciudad INT NOT NULL,
    tmin FLOAT,
    tmax FLOAT,
    tmed FLOAT,
    prec FLOAT,
    hrmed FLOAT,
    vmed FLOAT,
    CONSTRAINT fk_temp_ciudad
        FOREIGN KEY (id_ciudad)
        REFERENCES ciudades(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

-- Crear tabla consumo

CREATE TABLE IF NOT EXISTS consumo (
	id INT PRIMARY KEY AUTO_INCREMENT,
    fecha DATE,
    id_codigo INT NOT NULL,
    id_sector INT NOT NULL,
    id_horario INT NOT NULL,
    consumo FLOAT,
    CONSTRAINT fk_consumo_codigo
        FOREIGN KEY (id_codigo)
        REFERENCES codigos_postales(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
	CONSTRAINT fk_consumo_sector
        FOREIGN KEY (id_sector)
        REFERENCES sectores(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
	CONSTRAINT fk_consumo_horario
        FOREIGN KEY (id_horario)
        REFERENCES horario(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);


CREATE TABLE IF NOT EXISTS eventos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fecha DATE NOT NULL,
    id_ciudad INT NOT NULL,
    id_codigo_postal INT NOT NULL,
    id_sector INT NOT NULL,
    id_horario INT NOT NULL,
    id_consumo INT NOT NULL,
    id_temperatura INT NOT NULL,
    CONSTRAINT fk_eventos_ciudad
        FOREIGN KEY (id_ciudad)
        REFERENCES ciudades(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT fk_eventos_temperatura
        FOREIGN KEY (id_temperatura)
        REFERENCES temperaturas(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT fk_eventos_consumo
        FOREIGN KEY (id_consumo)
        REFERENCES consumo(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT fk_eventos_codigo_postal
        FOREIGN KEY (id_codigo_postal)
        REFERENCES codigos_postales(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT fk_eventos_horario
        FOREIGN KEY (id_horario)
        REFERENCES horario(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT fk_eventos_sector
        FOREIGN KEY (id_sector)
        REFERENCES sectores(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);