-- Author: Ej Sobrepena <ej.sobrepena@tuni.fi>
-- Date: 2024-01-07
-- File: 103-multiple-tables-and-self-join-3.sql

SELECT
    e.ename AS "Employee"
FROM
    emp e
JOIN
    emp m ON e.mgr = m.empno
WHERE
    e.sal > m.sal
ORDER BY
    "Employee"
;

-- End of file
