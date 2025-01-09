CREATE INDEX idx_person_name ON person (UPPER(name));

SET enable_seqscan = off;
EXPLAIN ANALYZE
SELECT name
FROM person
WHERE UPPER(name) = 'DMITRIY';


"Index Scan using idx_person_name on person  (cost=0.14..8.15 rows=1 width=32) (actual time=0.027..0.028 rows=1 loops=1)"
"  Index Cond: (upper((name)::text) = 'DMITRIY'::text)"
"Planning Time: 0.095 ms"
"Execution Time: 0.043 ms"