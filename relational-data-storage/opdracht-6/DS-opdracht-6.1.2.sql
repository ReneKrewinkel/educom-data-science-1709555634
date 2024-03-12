SELECT 	g.name AS gemeente,
		s.name AS leverancier,
        SUM(hitcount) AS total_hitcount,
		(SELECT
        	AVG(hitcount)
        	FROM mhl_hitcount h2
			JOIN mhl_suppliers s2 ON s2.ID = h2.supplier_ID
			JOIN mhl_cities c2 ON c2.ID = s2.city_ID
			JOIN mhl_communes g2 ON g2.ID = c2.commune_ID
			WHERE g2.ID = g.ID
        )AS average_hitcount
FROM 	mhl_hitcount h
JOIN 	mhl_suppliers s ON s.ID = h.supplier_ID
JOIN 	mhl_cities c ON c.ID = s.city_ID
JOIN 	mhl_communes g ON g.ID = c.commune_ID
WHERE	g.district_ID <= 12
GROUP BY leverancier
ORDER BY gemeente, average_hitcount, total_hitcount DESC