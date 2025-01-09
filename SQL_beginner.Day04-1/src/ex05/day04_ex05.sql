
CREATE VIEW v_price_with_discount AS
SELECT p.name AS name,
	m.pizza_name AS pizza_name,
	m.price AS price,
	CAST ((m.price - m.price * 0.1) AS INT) AS discount_price
FROM person p
JOIN person_order ON p.id = person_order.person_id
JOIN menu m ON person_order.menu_id = m.id
ORDER BY p.name, m.pizza_name;

-- SELECT *
-- FROM v_price_with_discount;