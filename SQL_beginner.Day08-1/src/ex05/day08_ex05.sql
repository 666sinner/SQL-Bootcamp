BEGIN TRANSACTION ISOLATION LEVEL READ COMMITTED;
BEGIN TRANSACTION ISOLATION LEVEL READ COMMITTED;

SELECT sum(rating) FROM pizzeria;   --1

UPDATE pizzeria SET rating = 1 WHERE name = 'Pizza Hut';    --2
COMMIT;

SELECT sum(rating) FROM pizzeria;   --1
COMMIT;
SELECT sum(rating) FROM pizzeria;

SELECT sum(rating) FROM pizzeria;   --2