SELECT	EXTRACT(YEAR FROM joindate) AS jaar,
		CASE(EXTRACT(MONTH FROM joindate))
        WHEN 1 THEN 'January'
		WHEN 2 THEN 'February'
        WHEN 3 THEN 'March'
        WHEN 4 THEN 'April'
        WHEN 5 THEN 'May'
        WHEN 6 THEN 'June'
        WHEN 7 THEN 'July'
        WHEN 8 THEN 'August'
        WHEN 9 THEN 'September'
        WHEN 10 THEN 'October'
        WHEN 11 THEN 'November'
        WHEN 12 THEN 'December'
        END maand,
        COUNT(*) AS aantal
FROM 	mhl_suppliers
GROUP BY maand, jaar
ORDER BY jaar, EXTRACT(MONTH FROM joindate)