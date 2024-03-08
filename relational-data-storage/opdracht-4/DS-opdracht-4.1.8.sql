SELECT 	c1.name AS name,
        c1.id AS cid1,
        c2.id AS cid2,
        c1.commune_id AS gid1,
        c2.commune_id AS gid2,
        g1.name AS gemeente_1,
        g2.name AS gemeente_2
FROM mhl_cities c1
JOIN mhl_cities AS c2 ON c1.name= c2.name
JOIN mhl_communes AS g1 ON g1.ID = c1.commune_ID
JOIN mhl_communes AS g2 ON g2.ID = c2.commune_ID
WHERE c1.id < c2.id AND
ORDER BY c1.name