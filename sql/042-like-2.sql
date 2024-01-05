-- Author: Ej Sobrepena <ej.sobrepena@tuni.fi>
-- Date: 2024-01-05
-- File: 042-like-2.sql

SELECT
    ename "Name",
    deptno "Department"
FROM
    emp
WHERE
    LOWER(ename) LIKE '_[aeiouyAEIOUY]%'
    AND (LOWER(job) LIKE '%sales%' OR LOWER(job) LIKE '%analyst%')
ORDER BY
    deptno ASC,
    ename
;

-- End of file
