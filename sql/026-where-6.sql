-- Author: Ej Sobrepena <ej.sobrepena@tuni.fi>
-- Date: 2023-12-07
-- File: 015-query-3.sql

SELECT ename AS "Employee",
       sal AS "Monthly Salary"
FROM emp
WHERE sal > 1500
    AND deptno
    IN (10, 30);

-- End of file
