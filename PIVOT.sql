SELECT Student,
	CAST(English AS DECIMAL(7,2)) AS English, CAST(Mathematics AS DECIMAL(7,2)) AS Mathematics,
	CAST(Science AS DECIMAL(7,2)) AS Science, CAST(Programming AS DECIMAL(7,2)) AS Programming,
	CAST(History AS DECIMAL(7,2)) AS History
FROM(SELECT Student, [Subject], Grades FROM Grade_Report)SourceTable
PIVOT(
	AVG(GRADES) FOR [Subject] IN (English, Mathematics, Science, Programming, History)
)AS PivotTable