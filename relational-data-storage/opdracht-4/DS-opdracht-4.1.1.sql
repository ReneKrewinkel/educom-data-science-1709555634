SELECT  mhl_supplier.name, mhl_supplier.straat, mhl_supplier.huisnr, mhl_supplier.postcode
FROM    mhl_supplier
INNER JOIN mhl_cities ON mhl_supplier.city_ID = mhl_cities.ID AND mhl_cities.name = 'Amsterdam'