SELECT  c.name,
        ifnull(g.name, "INVALID") AS gemeente
FROM    mhl_cities c
LEFT JOIN    mhl_communes g ON g.ID = c.commune_ID 