SELECT * FROM episodes

//Task 1
SELECT [title] FROM episodes
	WHERE [season] = 1;
	
//Task 2
SELECT [season], [title] FROM episodes
	WHERE [episode_in_season] = 1;
	
//Task 3
SELECT [production_code] FROM episodes
	WHERE [title] = 'Hackerized!';
	
//Task 4
SELECT [title] FROM episodes 
	WHERE [topic] IS NULL;
	
//Task 5
SELECT [title] FROM episodes
	WHERE [air_date] = '2004-12-31';
	
//Task 6
SELECT [title] FROM episodes
	 WHERE [season] = 6 AND [air_date] < '2008-01-01';
	 
//Task 7
SELECT [title], [topic] FROM episodes
	WHERE [topic] = 'Fractions';
	
//Task 8
SELECT COUNT(*) FROM episodes
	WHERE [air_date] BETWEEN '2018-01-01' AND '2023-12-31';
	
//Task 9
SELECT COUNT(*) FROM episodes
	WHERE [air_date] BETWEEN '2002-01-01' AND '2007-12-31';
	
//Task 10
SELECT [id], [title], [production_code] FROM episodes 
	ORDER BY [production_code] ASC;
	
//Task 11
SELECT [title] FROM episodes
	ORDER BY [title] DESC;
	
//Task 12
SELECT COUNT(DISTINCT [title]) FROM episodes;