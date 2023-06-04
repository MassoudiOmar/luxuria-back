SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema luxuria
-- ------------------------------------------------------
-- -----------------------------------------------------
-- Schema luxuria
-- -----------------------------------------------------
DROP DATABASE IF EXISTS `luxuria`;

CREATE SCHEMA IF NOT EXISTS `luxuria` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;

USE `luxuria`;


-- -----------------------------------------------------
-- Table `luxuria`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `luxuria`.`users` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(200) NOT NULL,
  `email` VARCHAR(200) NOT NULL,
  `password` VARCHAR(200) NOT NULL,
  `created_at` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

-- Create the "products" table
CREATE TABLE products (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(255),
  description TEXT,
  price DECIMAL(10, 2),
  discountPercentage DECIMAL(5, 2),
  rating DECIMAL(3, 2),
  stock INT,
  brand VARCHAR(255),
  category VARCHAR(255),
  thumbnail VARCHAR(255)
);

-- Create the "images" table
CREATE TABLE images (
  id INT AUTO_INCREMENT PRIMARY KEY,
  product_id INT,
  image_url VARCHAR(255)
);


SET SQL_MODE = @OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS = @OLD_UNIQUE_CHECKS;
