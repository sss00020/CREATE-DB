# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V9.1.0                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          Project3.dez                                    #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database creation script                        #
# Created on:            2015-11-30 16:09                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Add tables                                                             #
# ---------------------------------------------------------------------- #

# ---------------------------------------------------------------------- #
# Add table "Order"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `Order` (
    `mem_id` CHAR(10) NOT NULL,
    `pro_no` CHAR(10) NOT NULL,
    `time_in` DATE,
    `amount` INTEGER,
    `total` DOUBLE PRECISION,
    `time_out` DATE,
    `emp_id` CHAR(10) NOT NULL,
    `msg_id` CHAR(10) NOT NULL,
    `camp_id` VARCHAR(10),
    CONSTRAINT `PK_Order` PRIMARY KEY (`mem_id`)
);

# ---------------------------------------------------------------------- #
# Add table "Customer"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `Customer` (
    `mem_id` CHAR(10) NOT NULL,
    `name` VARCHAR(40),
    `surname` VARCHAR(40),
    `address` VARCHAR(60),
    `tel` CHAR(10),
    `date_time` DATE,
    CONSTRAINT `PK_Customer` PRIMARY KEY (`mem_id`)
);

# ---------------------------------------------------------------------- #
# Add table "Delivery"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `Delivery` (
    `mem_id` CHAR(10) NOT NULL,
    `msg_id` CHAR(10) NOT NULL,
    `pro_no` CHAR(10) NOT NULL,
    `emp_id` CHAR(10) NOT NULL,
    CONSTRAINT `PK_Delivery` PRIMARY KEY (`mem_id`, `msg_id`, `pro_no`, `emp_id`)
);

# ---------------------------------------------------------------------- #
# Add table "Branch"                                                     #
# ---------------------------------------------------------------------- #

CREATE TABLE `Branch` (
    `branch_id` CHAR(5) NOT NULL,
    `location` VARCHAR(40),
    `camp` CHAR(10),
    `pro_no` CHAR(10) NOT NULL,
    CONSTRAINT `PK_Branch` PRIMARY KEY (`branch_id`)
);

# ---------------------------------------------------------------------- #
# Add table "Product"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `Product` (
    `pro_no` CHAR(10) NOT NULL,
    `pro_name` VARCHAR(40),
    `type` VARCHAR(40),
    `size` CHAR(2),
    `price` DOUBLE PRECISION,
    `mem_id` CHAR(10),
    `branch_id` CHAR(5),
    CONSTRAINT `PK_Product` PRIMARY KEY (`pro_no`)
);

# ---------------------------------------------------------------------- #
# Add table "Employees"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `Employees` (
    `emp_id` CHAR(10) NOT NULL,
    `msg_id` CHAR(10) NOT NULL,
    `name` VARCHAR(40),
    `sername` VARCHAR(40),
    `address` VARCHAR(60),
    `tel` CHAR(10),
    `branch_id` CHAR(5),
    `mem_id` CHAR(10) NOT NULL,
    `pro_no` CHAR(10) NOT NULL,
    PRIMARY KEY (`emp_id`, `msg_id`, `mem_id`, `pro_no`)
);

# ---------------------------------------------------------------------- #
# Add table "Product_Customer1"                                          #
# ---------------------------------------------------------------------- #

CREATE TABLE `Product_Customer1` (
    `pro_no` CHAR(10) NOT NULL,
    `mem_id` CHAR(10) NOT NULL,
    CONSTRAINT `PK_Product_Customer1` PRIMARY KEY (`pro_no`, `mem_id`)
);

# ---------------------------------------------------------------------- #
# Add foreign key constraints                                            #
# ---------------------------------------------------------------------- #

ALTER TABLE `Product` ADD CONSTRAINT `Order_Product` 
    FOREIGN KEY (`mem_id`) REFERENCES `Order` (`mem_id`);

ALTER TABLE `Product` ADD CONSTRAINT `Branch_Product` 
    FOREIGN KEY (`branch_id`) REFERENCES `Branch` (`branch_id`);

ALTER TABLE `Employees` ADD CONSTRAINT `Branch_Employees` 
    FOREIGN KEY (`branch_id`) REFERENCES `Branch` (`branch_id`);

ALTER TABLE `Product_Customer1` ADD CONSTRAINT `Product_Product_Customer1` 
    FOREIGN KEY (`pro_no`) REFERENCES `Product` (`pro_no`);

ALTER TABLE `Product_Customer1` ADD CONSTRAINT `Customer_Product_Customer1` 
    FOREIGN KEY (`mem_id`) REFERENCES `Customer` (`mem_id`);
