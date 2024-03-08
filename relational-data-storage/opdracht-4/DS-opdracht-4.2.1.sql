SELECT  c.name,
        c.commune_ID
FROM    mhl_cities c
JOIN    mhl_communes g ON g.ID = c.commune_ID 
WHERE   g.name = NULL