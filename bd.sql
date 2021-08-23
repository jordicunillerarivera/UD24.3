DROP table IF EXISTS piezas;
DROP table IF EXISTS proveedores;
DROP table IF EXISTS suministra;

CREATE TABLE `UD26`.`piezas` (
  `codigo` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(100) NULL,
  PRIMARY KEY (`codigo`));

CREATE TABLE `UD26`.`proveedores` (
  `id` CHAR(4) NOT NULL,
  `nombre` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));

CREATE TABLE `UD26`.`suministra` (
  `codigoPieza` INT NOT NULL,
  `idProveedor` CHAR(4) NOT NULL,
  `precio` INT NULL,
  PRIMARY KEY (`codigoPieza`, `idProveedor`),
  INDEX `idProveedor_idx` (`idProveedor` ASC) VISIBLE,
FOREIGN KEY (`codigoPieza`)
    REFERENCES `UD26`.`piezas` (`codigo`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
FOREIGN KEY (`idProveedor`)
    REFERENCES `UD26`.`proveedores` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE);
