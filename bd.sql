DROP table IF EXISTS suministra;
DROP table IF EXISTS piezas;
DROP table IF EXISTS proveedores;

CREATE TABLE `piezas` (
  `codigo` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(100) NULL,
  PRIMARY KEY (`codigo`));

CREATE TABLE `proveedores` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));

CREATE TABLE `suministra` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `codigoPieza` INT NOT NULL,
  `idProveedor` INT NOT NULL,
  `precio` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `piezas_idx` (`codigoPieza` ASC) VISIBLE,
  INDEX `proveedores_idx` (`idProveedor` ASC) VISIBLE,
    FOREIGN KEY (`codigoPieza`)
    REFERENCES `piezas` (`codigo`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
    FOREIGN KEY (`idProveedor`)
    REFERENCES `proveedores` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE);

