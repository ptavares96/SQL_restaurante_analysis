-- Qual foi o faturamento total do restaurante em cada mês?
SELECT o.month, 
    SUM(m.price) AS total_revenue
FROM order_details o
JOIN menu_items m ON o.item_id = m.menu_item_id
GROUP BY o.month
ORDER BY o.month;

-- Quais são os dias da semana com maior faturamento?
SELECT o.day_of_week, 
    SUM(m.price) AS total_revenue
FROM order_details o
JOIN menu_items m ON o.item_id = m.menu_item_id
GROUP BY o.day_of_week
ORDER BY total_revenue DESC;

-- Qual foi a quantidade de vendas realizadas em cada horário ao longo do dia, por dia da semana?
SELECT COUNT(DISTINCT order_id) AS count_sales,
	period_of_day, day_of_week, month
FROM order_details
GROUP BY month, day_of_week, period_of_day
ORDER BY count_sales DESC;

-- Quais são os itens mais e menos pedido pelos clientes? A que categorias pertenciam?
 SELECT COUNT(o.order_details_id) AS number_of_items_ordered, 
	m.menu_item_id, 
    m.iten_name, 
    m.category
FROM order_details o LEFT JOIN menu_items m
ON m.menu_item_id = o.item_id
GROUP BY menu_item_id, iten_name
ORDER BY number_of_items_ordered DESC;

-- Qual sãos os três itens do menu que gera mais receita? E os que menos geram?
SELECT m.iten_name, 
    SUM(m.price) AS total_revenue
FROM order_details o INNER JOIN menu_items m 
ON o.item_id = m.menu_item_id
GROUP BY m.iten_name
ORDER BY total_revenue DESC
LIMIT 3;

-- Quais culinárias devemos priorizar no desenvolvimento de mais opções de cardápio fundamentadas nas informações disponíveis?
SELECT m.category, 
    SUM(m.price) AS total_revenue
FROM order_details o
JOIN menu_items m ON o.item_id = m.menu_item_id
GROUP BY m.category
ORDER BY total_revenue DESC;

-- Organize os dias incluindo uma coluna correspondente, indicando "Good", "Bad" ou "Avarage". 
-- Classifique como "Bom" se o resultado superar a média de vendas diária e como "Ruim" se for inferior à média de vendas diária.
WITH daily_revenue AS (
    SELECT DATE(o.order_date) AS order_day, 
        SUM(m.price) AS daily_revenue
    FROM order_details o
    JOIN menu_items m ON o.item_id = m.menu_item_id
    GROUP BY DATE(o.order_date)),
average_revenue AS ( SELECT AVG(daily_revenue) AS avg_daily_revenue  FROM daily_revenue)

SELECT dr.order_day, dr.daily_revenue, 
    CASE WHEN dr.daily_revenue > ar.avg_daily_revenue THEN 'Good'
        WHEN dr.daily_revenue < ar.avg_daily_revenue THEN 'Bad'
        ELSE 'Avarage'
    END AS performance
FROM daily_revenue dr, average_revenue ar
ORDER BY dr.order_day;




