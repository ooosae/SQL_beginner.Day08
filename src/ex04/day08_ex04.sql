-- Session #1
BEGIN TRANSACTION ISOLATION LEVEL READ COMMITTED;

-- Session #2
BEGIN TRANSACTION ISOLATION LEVEL READ COMMITTED;

-- Session #1
SELECT
    SUM(rating)
FROM
    pizzeria p;

-- Session #2
UPDATE
    pizzeria
SET
    rating = 1
WHERE
    name = 'Pizza Hut';

SELECT *
FROM
    pizzeria p
WHERE
    name = 'Pizza Hut';

COMMIT;

-- Session #1
SELECT
    SUM(rating)
FROM
    pizzeria p;

COMMIT;

SELECT
    SUM(rating)
FROM
    pizzeria p;

-- Session #2
SELECT
    SUM(rating)
FROM
    pizzeria p;
