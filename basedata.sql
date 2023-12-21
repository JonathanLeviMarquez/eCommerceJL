# SQL configs
SET SQL_MODE ='IGNORE_SPACE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';

# create database and use it
CREATE DATABASE IF NOT EXISTS eCommerceJL;
USE eCommerceJL;

# create the category table
CREATE TABLE IF NOT EXISTS CATEGORY(
category_id int unique key not null auto_increment primary key,
name        varchar(255) null
);

# insert default categories
INSERT INTO CATEGORY(name) VALUES ('Electronic'),
                                  ('Furniture'),
                                  ('Stationary'),
                                  ('Clothes'),
                                  ('Alcohol'),
                                  ('Bakery'),
                                  ('Other');

# create the customer table
CREATE TABLE IF NOT EXISTS CUSTOMER(
id       int unique key not null auto_increment primary key,
address  varchar(255) null,
email    varchar(255) null,
password varchar(255) null,
role     varchar(255) null,
username varchar(255) null,
UNIQUE (username)
);

# insert default customers
INSERT INTO CUSTOMER(address, email, password, role, username) VALUES
                                                                   ('Not speci', 'admin@ecomerce.com', '439', 'ROLE_ADMIN', 'admin'),
                                                                   ('Not speci', 'X@gmail.com', '450', 'ROLE_NORMAL', 'userX');

# create the product table
CREATE TABLE IF NOT EXISTS PRODUCT(
product_id  int unique key not null auto_increment primary key,
description varchar(255) null,
image       varchar(255) null,
name        varchar(255) null,
price       int null,
quantity    int null,
weight      int null,
category_id int null,
customer_id int null
);

# insert default products
INSERT INTO PRODUCT(description, image, name, price, quantity, weight, category_id) VALUES
                                                                                        ('Furniture brown and blue', 'imageHereHttp', 'closet', 3, 40, 76, 1),
                                                                                        ('Tablet apple ', 'imageHereHttp', 'iPad', 1, 90, 43, 9);

