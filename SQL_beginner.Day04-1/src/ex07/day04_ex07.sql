INSERT INTO person_visits (id, person_id, pizzeria_id, visit_date)
VALUES (((SELECT MAX(id) FROM person_visits) + 1),
        (SELECT id FROM person WHERE name = 'Dmitriy'),
        (SELECT id FROM pizzeria WHERE name = 'DoDo Pizza'),
        '2022-01-08');

INSERT INTO person_order (id, person_id, menu_id, order_date)
VALUES (((SELECT MAX(id) FROM person_order) + 1),
        (SELECT id FROM person WHERE name = 'Dmitriy'),
        (SELECT id FROM menu WHERE price < 800 LIMIT 1),
        '2022-01-08');

REFRESH MATERIALIZED VIEW mv_dmitriy_visits_and_eats;

SELECT *
FROM mv_dmitriy_visits_and_eats;