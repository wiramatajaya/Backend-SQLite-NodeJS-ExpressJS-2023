-- Author: Ej Sobrepena <ej.sobrepena@tuni.fi>
-- Date: 2024-01-05
-- File: 032-order-by-2.sql

SELECT
    deptno AS "Dept",
    ename AS "Employee",
    sal * 0.31 AS "Tax"
FROM
    emp
WHERE
    deptno = 10
ORDER BY
    deptno ASC,
    ename ASC
;

-- End of file
