-- Author: Ej Sobrepena <ej.sobrepena@tuni.fi>
-- Date: 2024-01-05
-- File: 042-like-2.sql

SELECT
    ename "Name",
    deptno "Department"
FROM
    emp
WHERE
    ename LIKE '_[aeiouyAEIOUY]%'
    AND (job LIKE '%SALES%' OR job LIKE '%ANALYST%')
ORDER BY
    deptno,
    ename
;

-- End of file
