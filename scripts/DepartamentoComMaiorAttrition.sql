SELECT
	Department,
    COUNT(*) as Total_Saidas,
    ROUND((COUNT(*) * 100 / (SELECT COUNT(*) FROM dados WHERE ATTRITION = "YES")), 2) as Porcentagem
FROM dados
WHERE Attrition = "YES"
GROUP BY Department
ORDER BY Total_Saidas DESC
