SELECT
    COALESCE(CONCAT(pr.name, ' - ', r.name), r.name) AS name,
     CASE
        WHEN SUM(h.hitcount) IS NULL OR SUM(h.hitcount) = 0 THEN 'Geen hits'
        ELSE CAST(SUM(h.hitcount) AS CHAR)
    END AS total
FROM
    mhl_rubrieken r
LEFT JOIN
    mhl_rubrieken pr ON r.parent = pr.ID
LEFT JOIN
    mhl_suppliers_mhl_rubriek_view sr ON sr.mhl_rubriek_view_ID = r.ID
LEFT JOIN
	mhl_suppliers s ON s.ID = sr.mhl_suppliers_ID
LEFT JOIN
	mhl_hitcount h ON h.supplier_ID = s.ID
GROUP BY
    name
ORDER BY
    name;
