SELECT      COALESCE(CONCAT(pr.name, ' - ', r.name), r.name) AS name,
            COUNT(sr.mhl_suppliers_ID) AS numsup
FROM        mhl_rubrieken r
LEFT JOIN   mhl_rubrieken pr ON r.parent = pr.ID
LEFT JOIN   mhl_suppliers_mhl_rubriek_view sr ON sr.mhl_rubriek_view_ID = r.ID
GROUP BY    name
ORDER BY    name;
