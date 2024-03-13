SELECT	c.name,
		SUM(IF(membertype = 1, 1, 0)) AS Gold,
        SUM(IF(membertype = 2, 1, 0)) AS Silver,
        SUM(IF(membertype = 3, 1, 0)) AS Bronze,
        SUM(IF(membertype >= 4, 1, 0)) AS Other
FROM	mhl_suppliers s
JOIN 	mhl_cities c ON c.ID = s.city_ID
GROUP BY c.name
ORDER BY Gold DESC, Silver DESC, Bronze DESC, Other DESC 