DECLARE @Students TABLE(cID INT, cStudent_Name VARCHAR(20), cLeader VARCHAR(20), cRanking INT)

INSERT INTO @Students
VALUES (1, 'Baldo', 'NULL', 0), (2, 'Cardo', 'Baldo', 1), (3, 'Luningning', 'Baldo', 1), (4, 'Pedro', 'Baldo', 1),
(5, 'Paolo', 'Cardo', 2), (6, 'Roberto', 'Pedro', 2), (7, 'Narciso', 'Pedro', 2), 
(8, 'Jopay', 'Luningning', 2), (9, 'Bernardo', 'Paolo', 3), (10, 'Policarpio', 'Jopay', 3), (11, 'Sisa', 'Jopay', 3), 
(12, 'Reginaldo', 'Bernardo', 4)

;WITH Students (ID, Student, Leader, Ranking) 
AS
(
	SELECT cID, cStudent_Name, cLeader, cRanking FROM @Students WHERE cRanking <= 4
	UNION ALL

	SELECT O.cID, O.cStudent_Name, O.cLeader, R.Ranking FROM @Students O
	JOIN Students R ON R.ID = O.cRanking
) 

SELECT TOP 12 Student, Leader, Ranking FROM Students
