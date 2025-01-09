BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;
BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;

SELECT sum(rating) FROM pizzeria;   --1

UPDATE pizzeria SET rating = 5 WHERE name = 'Pizza Hut';    --2
COMMIT;

SELECT sum(rating) FROM pizzeria;   --1
COMMIT;
SELECT sum(rating) FROM pizzeria;

SELECT sum(rating) FROM pizzeria;   --2