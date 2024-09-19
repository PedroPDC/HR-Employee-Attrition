SELECT
	Attrition,
    COUNT(*) as Total,
    ROUND((COUNT(*) * 100 / (SELECT COUNT(*) FROM dados)), 2) as Porcentagem
FROM dados
GROUP BY Attrition