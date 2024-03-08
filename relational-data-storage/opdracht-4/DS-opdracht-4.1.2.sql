SELECT  mhl_suppliers.name,
        mhl_suppliers.straat,
        mhl_suppliers.huisnr,
        mhl_suppliers.postcode,
        mhl_cities.name
FROM    mhl_suppliers
INNER JOIN mhl_cities ON mhl_suppliers.city_ID = mhl_cities.ID AND mhl_cities.commune_ID = 394