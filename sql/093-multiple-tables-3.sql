-- Author: Ej Sobrepena <ej.sobrepena@tuni.fi>
-- Date: 2024-01-07
-- File: 093-multiple-tables-3.sql

SELECT
    e.ename,
    d.dname,
    d.loc
FROM
    emp AS e
JOIN
    dept AS d ON e.deptno = d.deptno
WHERE
    e.comm IS NOT NULL
ORDER BY
    e.ename
;


-- End of file
