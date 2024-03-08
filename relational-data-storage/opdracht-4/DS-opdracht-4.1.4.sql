SELECT  s.name AS leveranciersnaam,
        s.straat,
        s.huisnr,
        s.postcode,
        pt.name AS property
FROM    mhl_yn_properties p
INNER JOIN mhl_propertytypes pt ON p.propertytype_ID = pt.ID
INNER JOIN mhl_suppliers s ON p.supplier_ID = s.ID
WHERE pt.name = 'specialistische leverancier' OR pt.name = 'ook voor particulieren'