-- Author: Ej Sobrepena <ej.sobrepena@tuni.fi>
-- Date: 2024-01-07
-- File: 104-multiple-tables-and-self-join-4.sql

SELECT
    d.loc AS "Location",
    d.dname AS "Department",
    e.ename AS "Employee",
    m.ename AS "Manager"
FROM
    emp AS e
INNER JOIN
    emp AS m ON e.mgr = m.empno
INNER JOIN
    dept AS d ON e.deptno = d.deptno
INNER JOIN
    salgrade AS s ON m.sal > s.hisal AND s.grade = 3
WHERE
    LOWER(m.ename) IN ('blake', 'ford', 'jones')
ORDER BY
    "Location", "Manager", "Employee";

-- End of file
