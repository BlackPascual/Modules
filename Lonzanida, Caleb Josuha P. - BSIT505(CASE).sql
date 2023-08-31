DECLARE @Records TABLE(IDs INT, Last_Name VARCHAR(20), First_Name VARCHAR(20), Age INT, Gender VARCHAR(10), Grade_Level VARCHAR(20))

INSERT INTO @Records
VALUES(1,'Santos','Mark Anthony',17,'Male','freshman'),
(2,'Nonat','Jason',15,'Male','sophomore'),
(3,'Valencia','Nicole',20,'Female','senior'),
(4,'Campos','Jane',19,'Female','junior'),
(5,'Morales','Micah',21,'Female','senior'),
(6,'Atienza','Eldibert',17,'Male','sophomore'),
(7,'Dela Cruz','Philip',16,'Male','freshman'),
(8,'Ramos','Loisa',21,'Female','senior'),
(9,'Galang','Orlean',18,'Male','junior'),
(10,'Detera','Chin',16,'Female','freshman')

DECLARE @Age1 INT, @Level1 VARCHAR(20),@Age2 INT, @Level2 VARCHAR(20)
		,@Age3 INT, @Level3 VARCHAR(20),@Age4 INT, @Level4 VARCHAR(20)
		,@Age5 INT, @Level5 VARCHAR(20),@Age6 INT, @Level6 VARCHAR(20)
		,@Age7 INT, @Level7 VARCHAR(20),@Age8 INT, @Level8 VARCHAR(20)
		,@Age9 INT, @Level9 VARCHAR(20),@Age10 INT, @Level10 VARCHAR(20)

SET @Age1 = (SELECT [Age] FROM @Records WHERE IDs = 1)
SET @Age2 = (SELECT [Age] FROM @Records WHERE IDs = 2)
SET @Age3 = (SELECT [Age] FROM @Records WHERE IDs = 3)
SET @Age4 = (SELECT [Age] FROM @Records WHERE IDs = 4)
SET @Age5 = (SELECT [Age] FROM @Records WHERE IDs = 5)
SET @Age6 = (SELECT [Age] FROM @Records WHERE IDs = 6)
SET @Age7 = (SELECT [Age] FROM @Records WHERE IDs = 7)
SET @Age8 = (SELECT [Age] FROM @Records WHERE IDs = 8)
SET @Age9 = (SELECT [Age] FROM @Records WHERE IDs = 9)
SET @Age10 = (SELECT [Age] FROM @Records WHERE IDs = 10)

UPDATE @Records SET Grade_Level = CASE 
	WHEN Age>=14 AND Age<=16 THEN 'FRESHMAN'
	WHEN Age>=17 AND Age<=19 THEN 'SOPHOMORE'
	WHEN Age>=20 AND Age<=22 THEN 'JUNIOR'
	WHEN Age>=23 AND Age<=25 THEN 'SENIOR'
	ELSE 'UNKNOWN'
	END

SELECT * FROM @Records