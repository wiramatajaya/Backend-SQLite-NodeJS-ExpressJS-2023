-- Author: Ej Sobrepena <ej.sobrepena@tuni.fi>
-- Date: 2024-01-06
-- File: 083-group-functions-3.sql

SELECT
    MAX(sal) "high",
    MIN(sal) "low"
FROM
    emp
WHERE
    deptno IN (10, 30)
;

-- End of file
