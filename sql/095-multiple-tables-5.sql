-- Author: Ej Sobrepena <ej.sobrepena@tuni.fi>
-- Date: 2024-01-07
-- File: 095-multiple-tables-5.sql

SELECT
    e.ename,
    e.job,
    e.deptno,
    d.dname
FROM
    emp AS e
JOIN
    dept AS d ON e.deptno = d.deptno
WHERE
    (LOWER(d.dname) = 'accounting' OR LOWER(d.dname) = 'sales' OR LOWER(d.dname) = 'operations') AND e.sal > 1000
ORDER BY
    e.ename
;

-- End of file
