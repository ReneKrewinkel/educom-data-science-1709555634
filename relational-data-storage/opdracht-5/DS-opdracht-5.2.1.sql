SELECT 	s.name AS leverancier,
		IFNULL(c.name, 'tav de directie') AS aanhef,
		IF(p_address<>'', p_address, CONCAT(straat, ' ', huisnr)) AS adres,
		IF(p_address<>'', p_postcode, postcode) AS postcode,
		IF(p_address<>'', c2.name, c1.name) AS stad,
		IF(p_address<>'', d2.name, d1.name) AS provincie
FROM 	mhl_suppliers s
LEFT JOIN 	mhl_contacts c ON c.supplier_ID = s.ID AND c.department = 3
LEFT JOIN 	mhl_cities c1 ON c1.ID = s.city_ID
LEFT JOIN 	mhl_communes g ON g.ID = c1.commune_ID
LEFT JOIN 	mhl_districts d1 ON d1.ID = g.district_ID
LEFT JOIN 	mhl_cities c2 ON c2.ID = s.p_city_ID
LEFT JOIN 	mhl_communes g2 ON g2.ID = c2.commune_ID
LEFT JOIN 	mhl_districts d2 ON d2.ID = g2.district_ID
WHERE 	postcode <> ''
ORDER BY provincie, stad, leverancier