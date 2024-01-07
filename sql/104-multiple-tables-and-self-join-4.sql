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
JOIN
    emp AS m ON e.mgr = m.empno
JOIN
    dept AS d ON e.deptno = d.deptno
WHERE
    LOWER(m.ename) IN ('blake', 'ford', 'jones') AND m.sal > (SELECT hisal FROM salgrade WHERE grade = 3)
ORDER BY
    "Location" ASC, "Manager" ASC, "Employee" ASC
;

-- End of file
