START TRANSACTION;

SELECT * FROM order_details;

-- Coluna com os nomes dos dias
SELECT DAYNAME(order_date) AS day_of_week FROM order_details;

ALTER TABLE order_details
ADD day_of_week VARCHAR(30);

UPDATE order_details
SET day_of_week = DAYNAME(order_date);

-- Coluna fim de semana
SELECT 
	CASE day_of_week WHEN 'Sunday' THEN 'Weekend'
    WHEN 'Saturday' THEN 'Weekend'
	ELSE 'Weekday' END AS weekday_or_weekend
FROM order_details;

ALTER TABLE order_details
ADD weekday_or_weekend VARCHAR(30);

UPDATE order_details
SET weekday_or_weekend = CASE day_of_week WHEN 'Sunday' THEN 'Weekend' 
	WHEN 'Saturday' THEN 'Weekend'
    ELSE 'Weekday' END;
    
-- Mês
ALTER TABLE order_details
ADD month VARCHAR(30);

UPDATE order_details
SET month = MONTH(order_date);

-- Manhã, tarde ou noite                                                                      
SELECT CASE 
	WHEN order_time BETWEEN "00:00:00" AND "12:00:00" THEN "Morning"
	WHEN order_time BETWEEN "12:00:01" AND "16:00:00" THEN "Afternoon"
		ELSE "Evening" END AS "period_of_day"
FROM order_details;

ALTER TABLE order_details
ADD COLUMN period_of_day VARCHAR(30);

UPDATE order_details
SET period_of_day = (SELECT CASE 
	WHEN order_time BETWEEN "00:00:00" AND "12:00:00" THEN "Morning"
	WHEN order_time BETWEEN "12:00:01" AND "16:00:00" THEN "Afternoon"
		ELSE "Evening" END AS "time_of_day");









