SELECT
	EmployeeNumber,
    COUNT(*) as duplicados
FROM dados
GROUP BY EmployeeNumber
HAVING COUNT(*) > 1