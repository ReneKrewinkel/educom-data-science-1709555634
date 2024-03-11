SELECT 	count(*) AS Count,
		avg(hitcount) AS Average,
        min(hitcount) AS Min,
        max(hitcount) AS Max,
        sum(hitcount) AS Sum
FROM 	mhl_hitcount