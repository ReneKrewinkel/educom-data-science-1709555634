SELECT  r2.ID,
        IFNULL(r1.name, r2.name) AS hoofdrubriek,
        IF(ISNULL(r1.name), ' ', r2.name) AS subrubriek
FROM    mhl_rubrieken r1
RIGHT JOIN    mhl_rubrieken r2 ON r2.parent = r1.ID
ORDER BY hoofdrubriek, subrubriek