BEGIN TRANSACTION ISOLATION LEVEL SERIALIZABLE;
BEGIN TRANSACTION ISOLATION LEVEL SERIALIZABLE;

SELECT * FROM pizzeria WHERE name = 'Pizza Hut'; --1

UPDATE pizzeria SET rating = 3.0 WHERE name = 'Pizza Hut'; --2
COMMIT;

SELECT * FROM pizzeria WHERE name = 'Pizza Hut'; --1
COMMIT;
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';


SELECT * FROM pizzeria WHERE name = 'Pizza Hut';    --2