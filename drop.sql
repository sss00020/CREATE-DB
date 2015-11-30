# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V9.1.0                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          Project3.dez                                    #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database drop script                            #
# Created on:            2015-11-30 16:09                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Drop foreign key constraints                                           #
# ---------------------------------------------------------------------- #

ALTER TABLE `Product` DROP FOREIGN KEY `Order_Product`;

ALTER TABLE `Product` DROP FOREIGN KEY `Branch_Product`;

ALTER TABLE `Employees` DROP FOREIGN KEY `Branch_Employees`;

ALTER TABLE `Product_Customer1` DROP FOREIGN KEY `Product_Product_Customer1`;

ALTER TABLE `Product_Customer1` DROP FOREIGN KEY `Customer_Product_Customer1`;

# ---------------------------------------------------------------------- #
# Drop table "Product_Customer1"                                         #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `Product_Customer1` DROP PRIMARY KEY;

DROP TABLE `Product_Customer1`;

# ---------------------------------------------------------------------- #
# Drop table "Employees"                                                 #
# ---------------------------------------------------------------------- #

# Drop constraints #

DROP TABLE `Employees`;

# ---------------------------------------------------------------------- #
# Drop table "Product"                                                   #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `Product` DROP PRIMARY KEY;

DROP TABLE `Product`;

# ---------------------------------------------------------------------- #
# Drop table "Branch"                                                    #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `Branch` DROP PRIMARY KEY;

DROP TABLE `Branch`;

# ---------------------------------------------------------------------- #
# Drop table "Delivery"                                                  #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `Delivery` DROP PRIMARY KEY;

DROP TABLE `Delivery`;

# ---------------------------------------------------------------------- #
# Drop table "Customer"                                                  #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `Customer` DROP PRIMARY KEY;

DROP TABLE `Customer`;

# ---------------------------------------------------------------------- #
# Drop table "Order"                                                     #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `Order` DROP PRIMARY KEY;

DROP TABLE `Order`;
