SELECT  s.name,
        s.straat,
        s.huisnr,
        s.postcode,
        pc.lat,
        pc.lng
FROM    mhl_suppliers s
INNER JOIN pc_lat_long pc ON pc.pc6 = s.postcode
ORDER BY    pc.lat DESC
LIMIT 5