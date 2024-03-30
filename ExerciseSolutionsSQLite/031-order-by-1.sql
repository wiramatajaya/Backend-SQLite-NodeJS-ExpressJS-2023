-- Author: Ej Sobrepena <ej.sobrepena@tuni.fi>
-- Date: 2024-01-05
-- File: 031-order-by-1.sql

SELECT
    e.ename,
    e.sal,
    e.sal * 1.15 "new salary"
FROM
    emp e
JOIN
    emp m ON e.mgr = m.empno
WHERE
    LOWER(m.ename) = 'blake'
ORDER BY
    "new salary",
    e.ename;

-- End of file
