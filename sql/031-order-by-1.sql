-- Author: Ej Sobrepena <ej.sobrepena@tuni.fi>
-- Date: 2024-01-05
-- File: 031-order-by-1.sql

SELECT
    ename,
    sal,
    sal * 1.15 "new salary"
FROM
    emp
WHERE
    mgr = (SELECT empno FROM emp WHERE LOWER(ename) = 'blake')
ORDER BY
    "new salary" ASC,
    ename ASC
;

-- End of file
