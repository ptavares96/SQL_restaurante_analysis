-- Ajustando as Datas e as Horas
SELECT * FROM order_details;

START TRANSACTION;

-- Ajustando a data

SELECT DATE_FORMAT(STR_TO_DATE(order_date, '%m/%d/%y'), '%Y-%m-%d') AS converted_date
FROM order_details;

UPDATE order_details
SET order_date = DATE_FORMAT(STR_TO_DATE(order_date, '%m/%d/%y'), '%Y-%m-%d');

-- Ajusta as horas
SELECT TIME_FORMAT(STR_TO_DATE(order_time, '%r'), '%h:%i:%s') AS converted_time
FROM order_details;

UPDATE order_details
SET order_time = TIME_FORMAT(STR_TO_DATE(order_time, '%r'), '%h:%i:%s');

-- Modificando o formato
ALTER TABLE order_details
MODIFY order_date DATE,
MODIFY order_time TIME;

COMMIT;

