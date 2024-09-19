SELECT
	JobSatisfaction,
	CASE
		WHEN JobSatisfaction = 1 Then "Low"
        WHEN JobSatisfaction = 2 Then "Medium"
        WHEN JobSatisfaction = 3 Then "High"
        WHEN JobSatisfaction = 4 Then "Very High"
        ELSE "Unknown"
	END AS JobSatisfactionLevel,
    COUNT(*) AS Total,
    SUM(CASE WHEN Attrition = "YES" THEN 1 ELSE 0 END) AS Sairam
FROM dados
GROUP BY JobSatisfaction
ORDER BY JobSatisfaction DESC
