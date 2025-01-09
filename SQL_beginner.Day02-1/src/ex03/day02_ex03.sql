WITH date_series AS (
    SELECT generate_series('2022-01-01'::date, '2022-01-10'::date, '1 day') AS visit_date
)

SELECT date_series.visit_date::date AS missing_date  -- Преобразование в формат даты
FROM date_series
LEFT JOIN (
    SELECT visit_date
    FROM person_visits
    WHERE person_id IN (1, 2)
) AS visits ON date_series.visit_date = visits.visit_date
WHERE visits.visit_date IS NULL
ORDER BY missing_date;
