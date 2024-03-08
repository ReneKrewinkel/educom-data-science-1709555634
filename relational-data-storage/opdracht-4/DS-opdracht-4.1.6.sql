SELECT  h.hitcount,
        s.name AS leverancier,
        ci.name AS stad,
        co.name AS gemeente,
        d.name AS provincie
FROM    mhl_suppliers AS s
INNER JOIN mhl_hitcount h ON h.supplier_ID = s.ID
INNER JOIN mhl_cities ci ON ci.ID = s.city_ID
INNER JOIN mhl_communes co ON co.ID = ci.commune_ID
INNER JOIN mhl_districts d ON d.ID = co.district_ID
WHERE (h.year = 2014 AND h.month = 1) AND (d.name = 'Limburg' OR d.name = 'Noord-Brabant' OR d.name = 'Zeeland')