CREATE DATABASE `shadowfashion`;

USE `shadowfashion`;


CREATE TABLE `account_types` (
  `id` INT PRIMARY KEY,
  `type` VARCHAR(100)
);

INSERT INTO account_types VALUES (1, "customer account");
INSERT INTO account_types VALUES (2, "pageant account");
INSERT INTO account_types VALUES (3, "blogger");
INSERT INTO account_types VALUES (4, "prime membership");
INSERT INTO account_types VALUES (5, "carrier account");
INSERT INTO account_types VALUES (6, "ad enquiry");
INSERT INTO account_types VALUES (7, "Investor");
INSERT INTO account_types VALUES (8, "Product Vendor");

CREATE TABLE `user` (
  `id` INT PRIMARY KEY AUTO_INCREMENT,
  `account_type_id` INT,
  `fname` VARCHAR(100),
  `sname` VARCHAR(100),
  `gender` VARCHAR(7),
  `dob` DATE,
  `user_name` VARCHAR(150),
  `password` VARCHAR(150),
  `email` VARCHAR(150) UNIQUE,
  `phone_number` VARCHAR(12) UNIQUE,
  `house_apt` VARCHAR(100),
  `district` VARCHAR(50),
  `city` VARCHAR(12),
  `state` VARCHAR(12),
  `pin` VARCHAR(7),
  `created_date` DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (`account_type_id`) REFERENCES `account_types`(`id`)
);

CREATE TABLE `messages` (
  `id` INT PRIMARY KEY AUTO_INCREMENT,
  `email` VARCHAR(100),
  `message` MEDIUMTEXT,
  `created_date` DATETIME DEFAULT CURRENT_TIMESTAMP
);