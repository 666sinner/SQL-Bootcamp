SELECT date_series::date AS missing_date
FROM generate_series('2022-01-01'::date, '2022-01-10'::date, '1 day') AS date_series
LEFT JOIN (
    SELECT visit_date
    FROM person_visits
    WHERE person_id IN (1, 2)
) AS visits ON date_series = visits.visit_date
WHERE visits.visit_date IS NULL
ORDER BY missing_date;