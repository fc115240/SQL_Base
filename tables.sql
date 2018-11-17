SET NAMES utf8 ;

CREATE DATABASE IF NOT EXISTS `geodata` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `geodata`;

CREATE TABLE IF NOT EXISTS `_countries` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `title` VARCHAR(150) NOT NULL,
   PRIMARY KEY (`id`),
   INDEX `title_idx` (`title` ASC) INVISIBLE
);


CREATE TABLE IF NOT EXISTS `geodata`.`_regions` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `country_id` INT NOT NULL,
  `title` VARCHAR(150) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `title_idx` (`title` ASC) INVISIBLE,
  INDEX `fk_regions_countries_idx` (`country_id` ASC) VISIBLE,
  CONSTRAINT `fk_regions_countries`
    FOREIGN KEY (`country_id`)
    REFERENCES `geodata`.`_countries` (`id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
);
 

CREATE TABLE IF NOT EXISTS `geodata`.`_cities` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `country_id` INT NOT NULL,
  `important` TINYINT(1) NOT NULL,
  `region_id` INT NOT NULL,
  `title` VARCHAR(150) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `title_idx` (`title` ASC) INVISIBLE,
  INDEX `fk_cities_countries_idx` (`country_id` ASC) VISIBLE,
  INDEX `fk_cities_regions_idx` (`region_id` ASC) VISIBLE,
  CONSTRAINT `fk_cities_countries`
    FOREIGN KEY (`country_id`)
    REFERENCES `geodata`.`_countries` (`id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_cities_regions`
    FOREIGN KEY (`region_id`)
    REFERENCES `geodata`.`_regions` (`id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE 
);

