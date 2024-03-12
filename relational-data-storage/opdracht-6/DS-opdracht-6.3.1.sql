SELECT	name,
            CASE
				WHEN SUBSTRING(name, 1, 1) = "'" OR SUBSTRING(name, 3,1) ='-' THEN
					CONCAT(SUBSTRING(name, 1, 3), UPPER(SUBSTRING(name, 4, 1)), SUBSTRING(name, 5, length(name)))
				ELSE 
					CONCAT(UPPER(SUBSTRING(name,1,1)),SUBSTRING(name, 2, length(name)))
			END nice_name
FROM 	mhl_cities
ORDER BY name