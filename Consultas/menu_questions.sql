-- Quantos itens disponíveis no cardápio deste restaurante?
SELECT COUNT(DISTINCT(iten_name)) FROM menu_items; -- 32

-- Quais tipos de culinária este restaurante disponibiliza?
SELECT DISTINCT(category) FROM menu_items;

-- Qual é o item mais caro do menu? E o mais barato?
SELECT iten_name, price 
FROM menu_items 
WHERE price = (SELECT MAX(price) FROM menu_items)
   OR price = (SELECT MIN(price) FROM menu_items);
