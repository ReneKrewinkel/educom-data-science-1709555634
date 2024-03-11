SELECT 	s.name AS name,
		SUM(hitcount) AS numhits,
		COUNT(month) AS nummonths,
        ROUND(AVG(hitcount)) AS avgpermonth
FROM 	mhl_hitcount h
JOIN 	mhl_suppliers s ON s.ID = h.supplier_ID
GROUP BY s.ID
ORDER BY avgpermonth DESC