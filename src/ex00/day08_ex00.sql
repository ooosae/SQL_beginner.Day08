-- Session #1
BEGIN;

UPDATE
    pizzeria
SET
    rating = 5
WHERE
    name = 'Pizza Hut';

SELECT *
FROM
    pizzeria p
WHERE
    name = 'Pizza Hut';

-- Session #2
SELECT *
FROM
    pizzeria p
WHERE
    name = 'Pizza Hut';

-- Session #1
COMMIT ;

-- Session #2
SELECT *
FROM
    pizzeria p
WHERE
    name = 'Pizza Hut';
