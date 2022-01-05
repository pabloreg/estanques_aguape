

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

CREATE SCHEMA IF NOT EXISTS `aguape` DEFAULT CHARACTER SET utf8 ;

use aguape;


-- -----------------------------------------------------
-- Table `aguape`.`usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `aguape`.`usuario` (
	`id` INT(1) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
 	`user` VARCHAR(20) NOT NULL,
	`email` VARCHAR(100) NOT NULL,
    `password` VARCHAR(14) NOT NULL,
    PRIMARY KEY (`id`)
  )
ENGINE = InnoDB;



-- -----------------------------------------------------
-- Table `aguape`.`clientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `aguape`.`clientes` (
	`id` INT(11) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
 	`nombre` VARCHAR(50) NOT NULL,
	`apellido` VARCHAR(50) NOT NULL,
	`email` VARCHAR(100),
    `telefono` INT(14) NOT NULL,
    `cuil` INT(11) ZEROFILL UNSIGNED,
	PRIMARY KEY (`id`)
  )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `aguape`.`trabajos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `aguape`.`trabajos` (
	`id` INT(11) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
 	`FDesde` date NOT NULL,
	`FHasta` date NOT NULL,
	`descripcion` VARCHAR(300),
    `importe` decimal(9,2),
    `idCliente` INT(11) UNSIGNED ZEROFILL NOT NULL,
	PRIMARY KEY (`id`),
    INDEX `id_Cliente` (`idCliente` ASC) VISIBLE,
	CONSTRAINT `idCliente`
    FOREIGN KEY (`idCliente`)
    REFERENCES `aguape`.`clientes` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
  )
ENGINE = InnoDB;


-- insert into usuario values (null, "admin","pabloreg@yahoo.com","CAC701cac");
-- insert into usuario values (null, "ruben","laplatapeces@yahoo.com","castell504");
















