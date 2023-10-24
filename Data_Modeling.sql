SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema movies
-- ------------------------------------------------------- -----------------------------------------------------
-- Schema movies
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `movies` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `movies` ;-- -----------------------------------------------------
-- Table `movies`.`movies_metadata`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `movies`.`movies_metadata` (
`adult` TEXT NULL DEFAULT NULL,
`budget` TEXT NULL DEFAULT NULL,
`id` TEXT NULL DEFAULT NULL,
`imdb_id` TEXT NULL DEFAULT NULL,
`original language` TEXT NULL DEFAULT NULL,
`original title` TEXT NULL DEFAULT NULL,
`popularity` DOUBLE NULL DEFAULT NULL,
`release_data` DATE NULL DEFAULT NULL,
`revenue` TEXT NULL DEFAULT NULL,
`runtime` TEXT NULL DEFAULT NULL,
`status` TEXT NULL DEFAULT NULL,
`tag line` TEXT NULL DEFAULT NULL,
`title` TEXT NULL DEFAULT NULL,
`video` TEXT NULL DEFAULT NULL,
`vote average` DOUBLE NULL DEFAULT NULL,
`vote count` TEXT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;
-- -----------------------------------------------------
-- Table `movies`.`ratings`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `movies`.`ratings` (
`user_id` INT NULL DEFAULT NULL,
`movie_id` TEXT NULL DEFAULT NULL,
`rating` FLOAT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;
SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;