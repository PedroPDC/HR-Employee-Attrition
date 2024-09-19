SELECT
	ROUND(AVG(YearsAtCompany), 2) AS Tempo_Medio
FROM dados
WHERE Attrition = "YES"