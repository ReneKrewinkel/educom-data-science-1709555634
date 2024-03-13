CREATE VIEW	v_VERZENDLIJST AS
	SELECT	s.ID AS ID,
			IF(p_address<>'', p_address, concat(s.straat, ' ',s.huisnr )) AS adres,
            IF(p_address<>'', p_postcode, postcode) AS postcode,
            IF(p_address<>'', c2.name, c1.name) AS stad
	FROM	mhl_suppliers s
    LEFT JOIN	mhl_cities c1 ON c1.ID = s.city_ID
	LEFT JOIN	mhl_cities c2 ON c2.ID = s.p_city_ID