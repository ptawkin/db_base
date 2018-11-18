USE `bd_hw1`;

ALTER TABLE `bd_hw1`.`_cities` 
ADD INDEX `country_idx` (`id_country` ASC) VISIBLE,
ADD INDEX `region_idx` (`id_region` ASC) VISIBLE,
ADD INDEX `c_district_idx` (`id_district` ASC) VISIBLE;
;
ALTER TABLE `bd_hw1`.`_cities` 
ADD CONSTRAINT `c_country`
  FOREIGN KEY (`id_country`)
  REFERENCES `bd_hw1`.`_countries` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `c_region`
  FOREIGN KEY (`id_region`)
  REFERENCES `bd_hw1`.`_region` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `c_district`
  FOREIGN KEY (`id_district`)
  REFERENCES `bd_hw1`.`_district` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
  
  
  