CREATE TABLE `aryanrashidi`.`products` ( `id` INT NOT NULL AUTO_INCREMENT , `name` VARCHAR(25) NOT NULL , `price` INT(20) NOT NULL , PRIMARY KEY (`id`)) ENGINE = InnoDB;
ALTER TABLE `products` ADD `state` ENUM('Active','Deactive','Deleted','') NOT NULL DEFAULT 'Active' AFTER `price`;
