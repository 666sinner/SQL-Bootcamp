SELECT menu.pizza_name AS pizza_name, price , pizzeria.name AS pizzeria_name
FROM menu
	JOIN pizzeria ON pizzeria.id = menu.pizzeria_id

LEFT JOIN person_order ON person_order.menu_id = menu.id
WHERE person_order IS NULL
ORDER BY pizza_name, price