SET enable_seqscan TO off;

CREATE UNIQUE INDEX IF NOT EXISTS idx_person_order_order_date ON
    person_order (person_id, menu_id)
	WHERE (order_date = '2022-01-01');

EXPLAIN ANALYZE
SELECT person_id, menu_id
FROM person_order
WHERE order_date = '2022-01-01';


"Index Only Scan using idx_person_order_order_date on person_order 
(cost=0.13..8.15 rows=1 width=16) (actual time=0.008..0.009 rows=5 loops=1)"