SELECT
	YearsInCurrentRole,
    SUM(CASE WHEN Attrition = "YES" THEN 1 ELSE 0 END) AS sairam
FROM dados
GROUP BY YearsInCurrentRole
