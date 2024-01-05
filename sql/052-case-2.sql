-- Author: Ej Sobrepena <ej.sobrepena@tuni.fi>
-- Date: 2024-01-05
-- File: 052-case-2.sql

SELECT
    ename,
    CASE
        WHEN deptno = 30 AND comm IS NULL THEN 100
        WHEN deptno = 30 AND comm IS NOT NULL THEN comm * 1.05
        ELSE comm
    END "comm"
FROM
    emp
ORDER BY
    "comm" ASC,
    ename ASC
;

-- End of file
