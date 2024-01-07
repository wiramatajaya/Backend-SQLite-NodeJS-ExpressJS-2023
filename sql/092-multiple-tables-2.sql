-- Author: Ej Sobrepena <ej.sobrepena@tuni.fi>
-- Date: 2024-01-07
-- File: 092-multiple-tables-2.sql

SELECT DISTINCT
    e.job
FROM
    emp e
JOIN
    dept d ON e.deptno = d.deptno
WHERE
    LOWER(d.loc) IN ('boston', 'new york')
ORDER BY
    e.job
;

-- End of file
