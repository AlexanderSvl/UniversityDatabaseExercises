//Just visualisation
SELECT * FROM views

//Task 1
SELECT [japanese_title], [english_title] FROM views;

//Task 2
SELECT [average_color] FROM views 
	WHERE [artist] = 'Hokusai' AND [english_title] LIKE '%river%';
	
//Task 3
SELECT COUNT(*) FROM views 
	WHERE [artist] = 'Hokusai' 
	AND [english_title] LIKE '%Fuji%';
	
//Task 4
SELECT COUNT(*) FROM views
	WHERE [artist] = 'Hiroshige'
	AND [english_title] LIKE '%Eastern Capital%';
	
//Task 5
SELECT MAX([contrast]) AS 'Maximum Contrast' FROM views 
	WHERE [artist] = 'Hokusai';
	
//Task 6
SELECT ROUND(AVG([entropy]), 2) AS 'Hiroshige Average Entropy' FROM views 
	WHERE [artist] = 'Hiroshige';
	
//Task 7
SELECT [english_title] FROM views 
	ORDER BY [brightness] DESC LIMIT 5;
	
//Task 8
SELECT [english_title] FROM views 
	ORDER BY [brightness] ASC LIMIT 5;

//Task 9
SELECT [english_title], [artist] FROM views
	ORDER BY [brightness] DESC LIMIT 1;
	
//Task 10
SELECT [brightness] AS 'Brightness > 0.65' FROM views
	WHERE [brightness] > 0.65
	ORDER BY [brightness] ASC;