SELECT	name,
		REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(name, '&Uuml;', 'Ü'), '&ouml;','ö'),'&eacute;', 'é'), '&euml;','ë'), '&egrave;','è'), '&iuml;', 'ï'), '&acirc;','â')
        AS nice_name
FROM 	mhl_suppliers
WHERE	name REGEXP '&[^\s]*;' LIMIT 25