-- Quantos itens de pedido foram solicitados por cada cliente?
-- Qual foi a quantidade mínima e a quantidade máxima de itens requisitados?
SELECT order_id AS customer, 
	COUNT(order_details_id) AS number_of_items_ordered
FROM order_details
GROUP BY order_id 
ORDER BY number_of_items_ordered DESC;

SELECT MAX(number_of_items_ordered) AS max_items_ordered, 
	MIN(number_of_items_ordered) AS min_items_ordered
FROM (SELECT order_id AS customer, 
		COUNT(order_details_id) AS number_of_items_ordered
    FROM order_details
    GROUP BY order_id
) AS order_summary;

-- Em média como é a movimentação durante o dia?
SELECT COUNT(DISTINCT(order_id)) AS number_of_customers,
	period_of_day, month, day_of_week
FROM order_details
GROUP BY period_of_day, month, day_of_week;

SELECT period_of_day, ROUND(AVG(number_of_customers),0) AS avg_number_of_customers
FROM (SELECT COUNT(DISTINCT(order_id)) AS number_of_customers,
	period_of_day, month, day_of_week
FROM order_details
GROUP BY period_of_day, month, day_of_week
) total_customers_per_period_of_day
GROUP BY period_of_day
ORDER BY avg_number_of_customers DESC;

-- Qual o valor médio gasto por cliente em um pedido? (últil se quisermos procurar sobre um cliente especifico)
SELECT o.order_id,
    ROUND(AVG(m.price), 2) AS avg_spend_per_order
FROM order_details o
JOIN menu_items m ON o.item_id = m.menu_item_id
GROUP BY o.order_id;



