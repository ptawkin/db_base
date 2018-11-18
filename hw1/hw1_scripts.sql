CREATE SCHEMA `bd_hw1` DEFAULT CHARACTER SET utf8mb4 ;

CREATE TABLE `bd_hw1`.`_countries` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));

CREATE TABLE `bd_hw1`.`_region` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `id_country` INT NOT NULL,
  `title` VARCHAR(25) NOT NULL,
  PRIMARY KEY (`id`));

ALTER TABLE `bd_hw1`.`_region` 
ADD INDEX `id_contry_idx` (`id_country` ASC);
ALTER TABLE `bd_hw1`.`_region` 
ADD CONSTRAINT `id_contry`
  FOREIGN KEY (`id_country`)
  REFERENCES `bd_hw1`.`_countries` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
  
  CREATE TABLE `bd_hw1`.`_district` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `id_country` INT NOT NULL,
  `id_region` INT NOT NULL,
  `title` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `id_country_idx` (`id_country` ASC) VISIBLE,
  INDEX `id_region_idx` (`id_region` ASC) VISIBLE,
  CONSTRAINT `id_country`
    FOREIGN KEY (`id_country`)
    REFERENCES `bd_hw1`.`_countries` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `id_region`
    FOREIGN KEY (`id_region`)
    REFERENCES `bd_hw1`.`_region` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
    
    CREATE TABLE `bd_hw1`.`_cities` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `id_country` INT NOT NULL,
  `important` TINYINT(1) NOT NULL,
  `id_region` INT NOT NULL,
  `id_district` INT NULL,
  `title` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));
  
  ALTER TABLE `bd_hw1`.`_cities` 
CHANGE COLUMN `important` `important` TINYINT(1) NULL ;
  
  INSERT INTO `bd_hw1`.`_countries` (`title`) VALUES ('Россия');
INSERT INTO `bd_hw1`.`_countries` (`title`) VALUES ('Англия');
INSERT INTO `bd_hw1`.`_countries` (`title`) VALUES ('Австралия');
INSERT INTO `bd_hw1`.`_countries` (`title`) VALUES ('Беларусь');

INSERT INTO `bd_hw1`.`_region` (`id_country`, `title`) VALUES ('1', 'Московская область');
INSERT INTO `bd_hw1`.`_region` (`id_country`, `title`) VALUES ('1', 'Ростовская область');
INSERT INTO `bd_hw1`.`_region` (`id_country`, `title`) VALUES ('1', 'Калужская область');
INSERT INTO `bd_hw1`.`_region` (`id_country`, `title`) VALUES ('4', 'Минская область');

INSERT INTO `bd_hw1`.`_district` (`id_country`, `id_region`, `title`) VALUES ('1', '1', 'Пушкинский район');

INSERT INTO `bd_hw1`.`_cities` (`id_country`, `important`, `id_region`, `title`) VALUES ('1', NULL, '1', 'Москва');
INSERT INTO `bd_hw1`.`_cities` (`id_country`, `id_region`, `id_district`, `title`) VALUES ('1', '1', '1', 'Поселок Правдинский');



  

