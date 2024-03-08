SELECT 	s.name AS "mhl_suppliers.name",
		pt.name AS "mhl_propertytypes.name",
        IFNULL(ynp.content, "NOT SET") AS value
FROM 	mhl_suppliers s
CROSS JOIN	mhl_propertytypes pt
LEFT JOIN mhl_yn_properties ynp ON ynp.propertytype_ID = pt.ID AND ynp.supplier_ID = s.ID
JOIN 	mhl_cities c ON c.ID = s.city_ID
WHERE 	c.name = 'Amsterdam' AND pt.proptype = 'A'