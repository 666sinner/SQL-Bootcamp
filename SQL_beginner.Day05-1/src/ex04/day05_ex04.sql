SET enable_seqscan TO off;

CREATE UNIQUE INDEX IF NOT EXISTS idx_menu_unique ON
    menu (pizzeria_id, pizza_name);

EXPLAIN ANALYZE
SELECT *
FROM menu
WHERE pizzeria_id = 2;

"Index Scan using idx_menu_unique on menu 
 (cost=0.14..8.15 rows=1 width=80) (actual time=0.008..0.009 rows=3 loops=1)"