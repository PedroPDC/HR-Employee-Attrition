SELECT
	Department,
    COUNT(*) AS quantity
FROM dados 
GROUP BY Department
ORDER BY quantity DESC
