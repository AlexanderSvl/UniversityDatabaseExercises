SELECT * FROM normals

//Task 1
SELECT [0m] FROM normals 
	WHERE [latitude] = 42.5
	AND [longitude] = -69.5;
	
//Task 2
SELECT [225m] FROM normals
	WHERE [latitude] = 42.5
	AND [longitude] = -69.5;
	
//Task 3
SELECT [0m], [100m], [200m] FROM normals
	WHERE [latitude] = 37.5
	AND [longitude] = -67.5;

//Task 4
SELECT [0m] FROM normals
	ORDER BY [0m] ASC
	LIMIT 1;
	
//Task 5
SELECT [0m] FROM normals
	ORDER BY [0m] DESC
	LIMIT 1;
	
//Task 6
SELECT [latitude], [longitude], [50m] FROM normals
	WHERE [latitude] BETWEEN 0 AND 20
	AND [longitude] BETWEEN 55 AND 75
	AND [50m] IS NOT NULL;
	
//Task 7
SELECT ROUND(AVG([0m]), 2) AS 'Average Equator Ocean Surface Temperature' FROM normals
	WHERE [latitude] >= -0.5 AND [latitude] <= 0.5;
	
//Task 8
SELECT [latitude], [longitude], [0m] FROM normals
	ORDER BY [0m] ASC, [latitude] ASC
	LIMIT 10;
	
//Task 9
SELECT [latitude], [longitude], [0m] FROM normals
	ORDER BY [0m] DESC, [latitude] ASC
	LIMIT 10;
	
//Task 10
SELECT COUNT(DISTINCT [latitude]) FROM normals
	WHERE [latitude] IS NOT NULL;