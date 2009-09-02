
# This is a fix for InnoDB in MySQL >= 4.1.x
# It "suspends judgement" for fkey relationships until are tables are set.
SET FOREIGN_KEY_CHECKS = 0;

#-----------------------------------------------------------------------------
#-- user
#-----------------------------------------------------------------------------

DROP TABLE IF EXISTS `user`;


CREATE TABLE `user`
(
	`id` INTEGER  NOT NULL AUTO_INCREMENT,
	`email` VARCHAR(64),
	PRIMARY KEY (`id`)
)Type=InnoDB;

#-----------------------------------------------------------------------------
#-- pizza_order
#-----------------------------------------------------------------------------

DROP TABLE IF EXISTS `pizza_order`;


CREATE TABLE `pizza_order`
(
	`id` INTEGER  NOT NULL AUTO_INCREMENT,
	`user_id` INTEGER,
	`name` VARCHAR(45),
	`time_open` DATETIME,
	`time_close` DATETIME,
	PRIMARY KEY (`id`),
	INDEX `FI_pizza_order_user_id` (`user_id`),
	CONSTRAINT `fk_pizza_order_user_id`
		FOREIGN KEY (`user_id`)
		REFERENCES `user` (`id`)
)Type=InnoDB;

#-----------------------------------------------------------------------------
#-- ingredient
#-----------------------------------------------------------------------------

DROP TABLE IF EXISTS `ingredient`;


CREATE TABLE `ingredient`
(
	`id` INTEGER  NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(45),
	`category_id` INTEGER,
	PRIMARY KEY (`id`),
	INDEX `FI_ingredient_category` (`category_id`),
	CONSTRAINT `fk_ingredient_category`
		FOREIGN KEY (`category_id`)
		REFERENCES `category` (`id`)
)Type=InnoDB;

#-----------------------------------------------------------------------------
#-- category
#-----------------------------------------------------------------------------

DROP TABLE IF EXISTS `category`;


CREATE TABLE `category`
(
	`id` INTEGER  NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(45),
	PRIMARY KEY (`id`)
)Type=InnoDB;

#-----------------------------------------------------------------------------
#-- vote
#-----------------------------------------------------------------------------

DROP TABLE IF EXISTS `vote`;


CREATE TABLE `vote`
(
	`id` INTEGER  NOT NULL AUTO_INCREMENT,
	`user_id` INTEGER,
	PRIMARY KEY (`id`),
	INDEX `FI_vote_user_id` (`user_id`),
	CONSTRAINT `fk_vote_user_id`
		FOREIGN KEY (`user_id`)
		REFERENCES `user` (`id`)
)Type=InnoDB;

# This restores the fkey checks, after having unset them earlier
SET FOREIGN_KEY_CHECKS = 1;
