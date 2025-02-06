-- Criação da base de dados
CREATE DATABASE restaurant_orders;
USE restaurant_orders;

-- Criação das tabelas: menu_items e order_datails
CREATE TABLE IF NOT EXISTS menu_items (
menu_item_id BIGINT NOT NULL PRIMARY KEY,
iten_name VARCHAR(30) NOT NULL,
category VARCHAR(30) NOT NULL,
price DECIMAL(4,2) NOT NULL
);

CREATE TABLE IF NOT EXISTS order_details (
order_details_id BIGINT NOT NULL PRIMARY KEY,
order_id BIGINT NOT NULL,
order_date VARCHAR(30) NOT NULL,
order_time VARCHAR(30) NOT NULL,
item_id BIGINT NOT NULL,
FOREIGN KEY (item_id) REFERENCES menu_items(menu_item_id)
);

-- Importação pelo Data Import Wizard Table

-- Visualizando as tabelas
SELECT * FROM menu_items;
SELECT * FROM order_details;