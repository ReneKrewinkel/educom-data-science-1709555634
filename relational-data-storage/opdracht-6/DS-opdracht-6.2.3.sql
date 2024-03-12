SELECT	DAYNAME(joindate) AS 'Dag van de week',
		COUNT('Dag van de week') AS 'Aantal aanmeldingen'
FROM 	mhl_suppliers
GROUP BY DAYNAME(joindate)
ORDER BY FIELD(DAYOFWEEK(joindate), 1, 2, 3, 4, 5, 6, 7)