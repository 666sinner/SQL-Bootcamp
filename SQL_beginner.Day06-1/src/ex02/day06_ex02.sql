SELECT person.name, menu.pizza_name, menu.price,
round (menu.price - (menu.price * person_discounts.discount / 100)) AS discount_prise,
pizzeria.name AS pizzeria_name
FROM person_order
	JOIN menu ON person_order.menu_id = menu.id
	JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
	JOIN person ON person.id = person_order.person_id
	JOIN person_discounts ON person.id = person_discounts.person_id
ORDER BY person.name, menu.pizza_name;