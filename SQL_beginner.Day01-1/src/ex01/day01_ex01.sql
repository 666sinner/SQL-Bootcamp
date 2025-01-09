(SELECT name AS object_name
FROM person
ORDER BY name)
UNION all
(SELECT pizza_name AS object_name
FROM menu
ORDER BY pizza_name)