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

/*For Row 1*/
IF @Age1<=16 AND @Age1>=14
	BEGIN
		UPDATE @Records
		SET Grade_Level = 'FRESHMAN'
		WHERE IDs = 1
	END
ELSE IF @Age1>=17 AND @Age1<=19
	BEGIN
		UPDATE @Records
		SET Grade_Level = 'SOPHOMORE'
		WHERE IDs = 1
	END
ELSE IF @Age1>=20 AND @Age1<=22
	BEGIN
		UPDATE @Records
		SET Grade_Level = 'JUNIOR'
		WHERE IDs = 1
	END
ELSE IF @Age1>=23 AND @Age1<=25
	BEGIN
		UPDATE @Records
		SET Grade_Level = 'SENIOR'
		WHERE IDs = 1
	END
ELSE
	BEGIN
		UPDATE @Records
		SET Grade_Level = 'UNKNOWN'
		WHERE IDs = 1
	END
/*For Row 2*/
IF @Age2<=16 AND @Age2>=14
	BEGIN
		UPDATE @Records
		SET Grade_Level = 'FRESHMAN'
		WHERE IDs = 2
	END
ELSE IF @Age2>=17 AND @Age2<=19
	BEGIN
		UPDATE @Records
		SET Grade_Level = 'SOPHOMORE'
		WHERE IDs = 2
	END
ELSE IF @Age2>=20 AND @Age2<=22
	BEGIN
		UPDATE @Records
		SET Grade_Level = 'JUNIOR'
		WHERE IDs = 2
	END
ELSE IF @Age2>=23 AND @Age2<=25
	BEGIN
		UPDATE @Records
		SET Grade_Level = 'SENIOR'
		WHERE IDs = 2
	END
ELSE
	BEGIN
		UPDATE @Records
		SET Grade_Level = 'UNKNOWN'
		WHERE IDs = 2
	END
/*For Row 3*/
IF @Age3<=16 AND @Age3>=14
	BEGIN
		UPDATE @Records
		SET Grade_Level = 'FRESHMAN'
		WHERE IDs = 3
	END
ELSE IF @Age3>=17 AND @Age3<=19
	BEGIN
		UPDATE @Records
		SET Grade_Level = 'SOPHOMORE'
		WHERE IDs = 3
	END
ELSE IF @Age3>=20 AND @Age3<=22
	BEGIN
		UPDATE @Records
		SET Grade_Level = 'JUNIOR'
		WHERE IDs = 3
	END
ELSE IF @Age3>=23 AND @Age3<=25
	BEGIN
		UPDATE @Records
		SET Grade_Level = 'SENIOR'
		WHERE IDs = 3
	END
ELSE
	BEGIN
		UPDATE @Records
		SET Grade_Level = 'UNKNOWN'
		WHERE IDs = 3
	END
/*For Row 4*/
IF @Age4<=16 AND @Age4>=14
	BEGIN
		UPDATE @Records
		SET Grade_Level = 'FRESHMAN'
		WHERE IDs = 4
	END
ELSE IF @Age4>=17 AND @Age4<=19
	BEGIN
		UPDATE @Records
		SET Grade_Level = 'SOPHOMORE'
		WHERE IDs = 4
	END
ELSE IF @Age4>=20 AND @Age4<=22
	BEGIN
		UPDATE @Records
		SET Grade_Level = 'JUNIOR'
		WHERE IDs = 4
	END
ELSE IF @Age4>=23 AND @Age4<=25
	BEGIN
		UPDATE @Records
		SET Grade_Level = 'SENIOR'
		WHERE IDs = 4
	END

ELSE
	BEGIN
		UPDATE @Records
		SET Grade_Level = 'UNKNOWN'
		WHERE IDs = 4
	END
/*For Row 5*/
IF @Age5<=16 AND @Age5>=14
	BEGIN
		UPDATE @Records
		SET Grade_Level = 'FRESHMAN'
		WHERE IDs = 5
	END
ELSE IF @Age5>=17 AND @Age5<=19
	BEGIN
		UPDATE @Records
		SET Grade_Level = 'SOPHOMORE'
		WHERE IDs = 5
	END
ELSE IF @Age5>=20 AND @Age5<=22
	BEGIN
		UPDATE @Records
		SET Grade_Level = 'JUNIOR'
		WHERE IDs = 5
	END
ELSE IF @Age5>=23 AND @Age5<=25
	BEGIN
		UPDATE @Records
		SET Grade_Level = 'SENIOR'
		WHERE IDs = 5
	END

ELSE
	BEGIN
		UPDATE @Records
		SET Grade_Level = 'UNKNOWN'
		WHERE IDs = 5
	END
/*For Row 6*/
IF @Age6<=16 AND @Age6>=14
	BEGIN
		UPDATE @Records
		SET Grade_Level = 'FRESHMAN'
		WHERE IDs = 6
	END
ELSE IF @Age6>=17 AND @Age6<=19
	BEGIN
		UPDATE @Records
		SET Grade_Level = 'SOPHOMORE'
		WHERE IDs = 6
	END
ELSE IF @Age6>=20 AND @Age6<=22
	BEGIN
		UPDATE @Records
		SET Grade_Level = 'JUNIOR'
		WHERE IDs = 6
	END
ELSE IF @Age6>=23 AND @Age6<=25
	BEGIN
		UPDATE @Records
		SET Grade_Level = 'SENIOR'
		WHERE IDs = 6
	END

ELSE
	BEGIN
		UPDATE @Records
		SET Grade_Level = 'UNKNOWN'
		WHERE IDs = 6
	END
/*For Row 7*/
IF @Age7<=16 AND @Age7>=14
	BEGIN
		UPDATE @Records
		SET Grade_Level = 'FRESHMAN'
		WHERE IDs = 7
	END
ELSE IF @Age7>=17 AND @Age7<=19
	BEGIN
		UPDATE @Records
		SET Grade_Level = 'SOPHOMORE'
		WHERE IDs = 7
	END
ELSE IF @Age7>=20 AND @Age7<=22
	BEGIN
		UPDATE @Records
		SET Grade_Level = 'JUNIOR'
		WHERE IDs = 7
	END
ELSE IF @Age7>=23 AND @Age7<=25
	BEGIN
		UPDATE @Records
		SET Grade_Level = 'SENIOR'
		WHERE IDs = 7
	END

ELSE
	BEGIN
		UPDATE @Records
		SET Grade_Level = 'UNKNOWN'
		WHERE IDs = 7
	END
/*For Row 8*/
IF @Age8<=16 AND @Age8>=14
	BEGIN
		UPDATE @Records
		SET Grade_Level = 'FRESHMAN'
		WHERE IDs = 8
	END
ELSE IF @Age8>=17 AND @Age8<=19
	BEGIN
		UPDATE @Records
		SET Grade_Level = 'SOPHOMORE'
		WHERE IDs = 8
	END
ELSE IF @Age8>=20 AND @Age8<=22
	BEGIN
		UPDATE @Records
		SET Grade_Level = 'JUNIOR'
		WHERE IDs = 8
	END
ELSE IF @Age8>=23 AND @Age8<=25
	BEGIN
		UPDATE @Records
		SET Grade_Level = 'SENIOR'
		WHERE IDs = 8
	END

ELSE
	BEGIN
		UPDATE @Records
		SET Grade_Level = 'UNKNOWN'
		WHERE IDs = 8
	END
/*For Row 9*/
IF @Age9<=16 AND @Age9>=14
	BEGIN
		UPDATE @Records
		SET Grade_Level = 'FRESHMAN'
		WHERE IDs = 9
	END
ELSE IF @Age9>=17 AND @Age9<=19
	BEGIN
		UPDATE @Records
		SET Grade_Level = 'SOPHOMORE'
		WHERE IDs = 9
	END
ELSE IF @Age9>=20 AND @Age9<=22
	BEGIN
		UPDATE @Records
		SET Grade_Level = 'JUNIOR'
		WHERE IDs = 9
	END
ELSE IF @Age9>=23 AND @Age9<=25
	BEGIN
		UPDATE @Records
		SET Grade_Level = 'SENIOR'
		WHERE IDs = 9
	END

ELSE
	BEGIN
		UPDATE @Records
		SET Grade_Level = 'UNKNOWN'
		WHERE IDs = 9
	END
/*For Row 10*/
IF @Age10<=16 AND @Age10>=14
	BEGIN
		UPDATE @Records
		SET Grade_Level = 'FRESHMAN'
		WHERE IDs = 10
	END
ELSE IF @Age10>=17 AND @Age10<=19
	BEGIN
		UPDATE @Records
		SET Grade_Level = 'SOPHOMORE'
		WHERE IDs = 10
	END
ELSE IF @Age10>=20 AND @Age10<=22
	BEGIN
		UPDATE @Records
		SET Grade_Level = 'JUNIOR'
		WHERE IDs = 10
	END
ELSE IF @Age10>=23 AND @Age10<=25
	BEGIN
		UPDATE @Records
		SET Grade_Level = 'SENIOR'
		WHERE IDs = 10
	END

ELSE
	BEGIN
		UPDATE @Records
		SET Grade_Level = 'UNKNOWN'
		WHERE IDs = 10
	END

SELECT * FROM @Records
