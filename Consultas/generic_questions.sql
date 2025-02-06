SELECT * FROM order_details;
SELECT * FROM menu_items;

-- Quantos pedidos foram feitos durante o período dos dados?
SELECT COUNT(order_time) FROM order_details;

-- Qual é o preço médio para cada classe (tipo de culinária)?
SELECT ROUND(AVG(price),2) AS average_price, category
FROM menu_items
GROUP BY category
ORDER BY average_price DESC;

-- Qual é a média mensal de pedidos?
-- 		Total de pedidos separados por mês e dia
SELECT COUNT(order_time) AS total_orders, month, day_of_week
FROM order_details
GROUP BY month, day_of_week;
-- 		Média de pedidos separados por mês e dia
SELECT month, ROUND(AVG(total_orders),0) AS average_orders
FROM (SELECT COUNT(order_time) AS total_orders, month, day_of_week
	FROM order_details
	GROUP BY month, day_of_week) orders
GROUP BY month;

-- Qual é a média diária de clientes?
--    Total de clientes por mês e dias
SELECT COUNT(DISTINCT(order_id)) AS total_clients, month, day_of_week
FROM order_details
GROUP BY month, day_of_week;
--    Média de clientes por dia
SELECT day_of_week, ROUND(AVG(total_clients),0) AS average_of_clients
FROM (SELECT COUNT(DISTINCT(order_id)) AS total_clients, month, day_of_week
FROM order_details
GROUP BY month, day_of_week) clients_summ
GROUP BY day_of_week
ORDER BY average_of_clients DESC;


 










