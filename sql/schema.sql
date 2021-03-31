-- Schema creation goes here
DROP TABLE IF EXISTS customers CASCADE;
DROP TABLE IF EXISTS orders CASCADE;
DROP TABLE IF EXISTS products CASCADE;
DROP TABLE IF EXISTS categories CASCADE;
DROP TABLE IF EXISTS addresses CASCADE;
DROP TABLE IF EXISTS purchased_products CASCADE;

CREATE TABLE customers(
id serial PRIMARY KEY,
first_name varchar(255)NOT NULL,
last_name varchar(255)NOT NULL,
email varchar(255) NOT NULL,
date_of_birth date NOT NULL,
address_id integer NOT NULL,
order_id integer NOT NULL
);

CREATE TABLE addresses(
id serial PRIMARY KEY,
street_name varchar(255),
city varchar(255),
state varchar(22),
zipcode varchar(22),
customer_id integer NOT NULL
);

CREATE TABLE products(
id serial PRIMARY KEY,
item_desc varchar(255) NOT NULL,
size varchar(255) NOT NULL,
color varchar(255) NOT NULL,
price decimal NOT NULL,
qty integer NOT NULL,
category_name varchar(255) NOT NULL
);

CREATE TABLE orders(
id serial PRIMARY KEY,
first_name varchar(255) NOT NULL,
last_name varchar(255) NOT NULL,
product_ordered varchar(255) NOT NULL,
Order_date date NOT NULL,
Total decimal,
category_name varchar(255) NOT NULL,
Customer_id integer NOT NULL 
-- Product_id integer NOT NULL
);

CREATE TABLE purchased_products(
id serial PRIMARY KEY,
first_name varchar(255)NOT NULL,
last_name varchar(255)NOT NULL,
product_ordered varchar(255)NOT NULL,
order_id integer NOT NULL,
Customer_id integer NOT NULL);

CREATE TABLE categories(
id serial PRIMARY KEY,
category_name varchar(255) NOT NULL
);






