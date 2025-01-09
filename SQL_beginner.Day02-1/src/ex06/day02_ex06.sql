SELECT menu.pizza_name, pizzeria.name AS pizzeria_name
FROM person
JOIN person_order ON person.id = person_order.person_id
JOIN menu ON person_order.menu_id = menu.id
JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
WHERE person.name IN ('Denis', 'Anna')
ORDER BY menu.pizza_name, pizzeria.name;
