CREATE VIEW v_Directie AS
    SELECT 	c.supplier_ID AS ID,
		    c.name AS contact,
            c.contacttype AS functie,
            d.name AS department
    FROM 	mhl_contacts c
    JOIN	mhl_departments d ON d.ID = c.department
    WHERE	IF(d.name = "Directie", TRUE, contacttype LIKE '%directeur%')