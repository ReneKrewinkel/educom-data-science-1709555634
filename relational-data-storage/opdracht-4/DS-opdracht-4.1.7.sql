SELECT 	c1.name AS "C1.name",
		c2.name AS "C2.name",
        c1.id AS "C1.ID",
        c2.id AS "C2.ID",
        c1.commune_id AS "C1.commune_ID",
        c2.commune_id AS "C2.commune_ID"
FROM mhl_cities c1
JOIN mhl_cities AS c2 ON c1.name= c2.name
WHERE c1.id <> c2.id
ORDER BY c1.name