SELECT  name,
        huisnr,
        postcode
FROM    mhl_suppliers
WHERE   membertype_id IN (1,2,3,8)