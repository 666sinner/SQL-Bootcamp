WITH orders_count AS (
	SELECT pizzeria.name AS name, COUNT(*) AS count
	FROM person_order
	JOIN menu ON person_order.menu_id = menu.id
	JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
	GROUP BY pizzeria.name
	),
visits_count AS (
	SELECT pizzeria.name AS name, COUNT(*) AS count
	FROM person_visits
	JOIN pizzeria ON person_visits.pizzeria_id = pizzeria.id
	GROUP BY pizzeria.name)
SELECT
	COALESCE(visits_count.name, orders_count.name) AS name,
	COALESCE(visits_count.count, 0) + COALESCE(orders_count.count, 0) AS total_count
FROM orders_count
JOIN visits_count ON orders_count.name = visits_count.name
ORDER BY total_count DESC, name ASC