SELECT 	s.name,
		IFNULL(v2.contact, 'tav de directie') AS contact,
		v1.adres,
        v1.postcode,
        v1.stad
FROM	mhl_suppliers s
LEFT JOIN	v_verzendlijst v1 ON v1.ID = s.ID
LEFT JOIN	v_directie v2 ON v2.ID = s.ID
		