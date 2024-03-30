-- Author: Ej Sobrepena <ej.sobrepena@tuni.fi>
-- Date: 2024-01-05
-- File: 032-order-by-2.sql

SELECT
    empno,
    ename,
    deptno,
    hiredate
FROM
    emp
WHERE
    empno > 7900 OR empno < 7600
ORDER BY
    empno
;


-- End of file
