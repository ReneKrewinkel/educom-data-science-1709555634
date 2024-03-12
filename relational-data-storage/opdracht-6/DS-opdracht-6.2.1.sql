SELECT 	DATE_FORMAT(s.joindate, GET_FORMAT(DATE,'EUR')) AS joindate,
		s.ID
FROM 	mhl_suppliers s
WHERE 	LAST_DAY(s.joindate) - INTERVAL 7 DAY <= s.joindate
ORDER BY s.ID