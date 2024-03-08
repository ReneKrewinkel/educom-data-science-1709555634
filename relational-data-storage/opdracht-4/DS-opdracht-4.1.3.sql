SELECT  r.name AS rubrieknaam,
		s.name AS leveranciersnaam,
        s.straat,
        s.huisnr,
        s.postcode
FROM    mhl_suppliers s
LEFT JOIN mhl_suppliers_mhl_rubriek_view sr ON sr.mhl_suppliers_id = s.ID
LEFT JOIN mhl_rubrieken r ON r.ID = sr.mhl_rubriek_view_ID
WHERE   s.city_ID = 104 AND (r.ID= 235 OR r.parent = 235)
ORDER BY r.name, s.name