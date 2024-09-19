SELECT
	﻿Age,
    COUNT(*) as Total,
	SUM(CASE WHEN Attrition = "Yes" THEN 1 ELSE 0 END) as Sairam
FROM dados
GROUP BY ﻿Age
ORDER BY ﻿Age