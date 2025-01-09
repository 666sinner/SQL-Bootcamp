SELECT DISTINCT person.name
FROM person
JOIN person_visits ON person.id = person_visits.person_id
ORDER BY person.name
