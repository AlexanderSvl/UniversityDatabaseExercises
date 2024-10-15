SELECT * FROM players LIMIT 100;

-- Task 1
SELECT birth_city, birth_state, birth_country 
	FROM players 
    WHERE CONCAT(first_name, ' ', last_name) = 'Jackie Robinson';

-- Task 2
SELECT bats AS "Side" 
	FROM players 
    WHERE CONCAT(first_name, ' ', last_name) = 'Babe Ruth' ;

-- Task 3
SELECT id FROM players 
	WHERE debut IS NULL;

-- Task 4
SELECT first_name, last_name 
	FROM players 
    WHERE birth_country != 'United States' 
    ORDER BY first_name, last_name ASC;

-- Task 5
SELECT first_name, last_name 
	FROM players WHERE bats = 'R' 
    ORDER BY first_name, last_name ASC;

-- Task 6
SELECT first_name, last_name, debut 
	FROM players 
    WHERE birth_city = 'Pittsburgh' AND birth_state = 'PA' 
    ORDER BY debut DESC, first_name, last_name ASC;

-- Task 7
SELECT COUNT(*) FROM players 
	WHERE bats = 'R' AND throws = 'L' 
    OR bats = 'L' AND throws = 'R';

-- Task 8
SELECT ROUND(AVG(height), 2) AS 'Average Height', ROUND(AVG(weight), 2) AS 'Average Weight' 
	FROM players 
    WHERE debut >= '2000-01-01';

-- Task 9
SELECT * FROM players 
	WHERE final_game 
    BETWEEN '2022-01-01' AND '2022-12-31' 
    ORDER BY first_name, last_name ASC;

-- Task 10
SELECT CONCAT(first_name, ' ', last_name) AS 'Player name' 
	FROM players 
    WHERE birth_country = 'Brazil' 
    ORDER BY first_name ASC, last_name DESC;