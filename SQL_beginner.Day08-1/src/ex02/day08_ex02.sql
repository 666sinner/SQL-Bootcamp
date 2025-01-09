BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ; --1 --2 

UPDATE pizzeria SET rating = 4 WHERE name = 'Pizza Hut'; --1
UPDATE pizzeria SET rating = 3.6 WHERE name = 'Pizza Hut'; --2

COMMIT;
COMMIT;

SELECT * FROM pizzeria WHERE name = 'Pizza Hut';
