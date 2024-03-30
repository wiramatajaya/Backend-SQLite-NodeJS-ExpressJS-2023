-- Author: Ej Sobrepena <ej.sobrepena@tuni.fi>
-- Date: 2024-01-07
-- File: 101-multiple-tables-and-self-join-1.sql

SELECT
    m.ename AS "Manager",
    m.empno AS "Mgr#",
    e.ename AS "Employee",
    e.empno AS "Emp#"
FROM
    emp AS e
JOIN
    emp AS m ON e.mgr = m.empno
WHERE
    LOWER(m.ename) IN ('blake', 'ford', 'scott')
ORDER BY
    "Manager" ASC,
    "Employee" ASC
;

-- End of file
