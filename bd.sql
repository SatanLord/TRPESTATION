SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

DROP SCHEMA IF EXISTS `trpestacionamiento` ;
CREATE SCHEMA IF NOT EXISTS `trpestacionamiento` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
USE `trpestacionamiento` ;

-- -----------------------------------------------------
-- Table `trpestacionamiento`.`registros`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `trpestacionamiento`.`registros` (
  `id` INT(10) NOT NULL AUTO_INCREMENT ,
  `numero` VARCHAR(9) CHARACTER SET 'utf8' COLLATE 'utf8_spanish_ci' NOT NULL ,
  `fechaEntrada` DATE NOT NULL ,
  `fechaSalida` DATE NOT NULL ,
  `horaEntrada` TIME NOT NULL ,
  `horaSalida` TIME NOT NULL ,
  `importeCobrado` FLOAT NOT NULL ,
  `formaPago` VARCHAR(9) CHARACTER SET 'utf8' COLLATE 'utf8_spanish_ci' NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB
AUTO_INCREMENT = 16
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `trpestacionamiento`.`usuarios`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `trpestacionamiento`.`usuarios` (
  `id_usuarios` INT(11) NOT NULL ,
  `email` VARCHAR(100) CHARACTER SET 'utf8' COLLATE 'utf8_spanish_ci' NOT NULL ,
  `password` VARCHAR(15) CHARACTER SET 'utf8' COLLATE 'utf8_spanish_ci' NOT NULL ,
  `access` VARCHAR(5) CHARACTER SET 'utf8' COLLATE 'utf8_spanish_ci' NOT NULL ,
  PRIMARY KEY (`id_usuarios`) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `trpestacionamiento`.`vehiculos`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `trpestacionamiento`.`vehiculos` (
  `id` INT(10) NOT NULL AUTO_INCREMENT ,
  `marca` VARCHAR(20) CHARACTER SET 'utf8' COLLATE 'utf8_spanish_ci' NOT NULL ,
  `numero` VARCHAR(9) CHARACTER SET 'utf8' COLLATE 'utf8_spanish_ci' NOT NULL ,
  `fecha` DATE NOT NULL ,
  `hora` TIME NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;

USE `trpestacionamiento` ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
