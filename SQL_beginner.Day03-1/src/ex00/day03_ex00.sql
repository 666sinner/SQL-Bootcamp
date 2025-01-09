SELECT menu.pizza_name,
	menu.price,
	pizzeria.name AS pizzeria_name, 
	person_visits.visit_date
FROM pizzeria
JOIN person_visits
	on person_visits.pizzeria_id = pizzeria.id
JOIN menu
	on menu.pizzeria_id = pizzeria.id
JOIN person 
	on person.id = person_visits.person_id
WHERE person.name = 'Kate' AND price BETWEEN 800 AND 1000
order by pizza_name, price , pizzeria_name