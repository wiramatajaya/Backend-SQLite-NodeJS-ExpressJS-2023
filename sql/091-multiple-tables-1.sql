-- Author: Ej Sobrepena <ej.sobrepena@tuni.fi>
-- Date: 2024-01-07
-- File: 091-multiple-tables-1.sql

SELECT
    e.ename,
    e.deptno,
    d.dname
FROM
    emp e
JOIN
    dept d ON e.deptno = d.deptno
WHERE
    LOWER(d.loc) = 'dallas' OR LOWER(e.job) = 'salesman'
ORDER BY
    e.ename
;

-- End of file
