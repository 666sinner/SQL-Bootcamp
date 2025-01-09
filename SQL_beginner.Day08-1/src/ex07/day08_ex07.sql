SHOW TRANSACTION ISOLATION LEVEL;
SHOW TRANSACTION ISOLATION LEVEL;

BEGIN;
BEGIN;

UPDATE pizzeria SET rating = 1 WHERE id = 1;    --1

UPDATE pizzeria SET rating = 1 WHERE id = 2;    --2

UPDATE pizzeria SET rating = 2 WHERE id = 2;    --1

UPDATE pizzeria SET rating = 2 WHERE id = 1;    --2

COMMIT; --1

COMMIT; --2
