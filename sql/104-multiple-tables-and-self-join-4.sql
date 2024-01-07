-- Author: Ej Sobrepena <ej.sobrepena@tuni.fi>
-- Date: 2024-01-07
-- File: 104-multiple-tables-and-self-join-4.sql

SELECT
    d.loc AS "Location",
    d.dname AS "Department",
    e.ename AS "Employee",
    m.ename AS "Manager"
FROM
    emp e
JOIN
    emp m ON e.mgr = m.empno
JOIN
    dept d ON e.deptno = d.deptno
WHERE
    m.ename IN ('BLAKE', 'FORD', 'JONES') AND m.sal > (SELECT sal FROM salgrade WHERE grade = 3)
ORDER BY
    "Location", "Manager", "Employee"
;

-- End of file
