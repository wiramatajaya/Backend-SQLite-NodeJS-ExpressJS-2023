-- Author: Ej Sobrepena <ej.sobrepena@tuni.fi>
-- Date: 2024-01-07
-- File: 102-multiple-tables-and-self-join-2.sql

SELECT
    e1.deptno AS "Dept",
    e1.ename AS "Employee",
    e2.ename AS "Colleague"
FROM
    emp e1
JOIN
    emp e2 ON e1.deptno = e2.deptno AND e1.empno != e2.empno
ORDER BY
    "Dept", "Employee", "Colleague"
;

-- End of file
