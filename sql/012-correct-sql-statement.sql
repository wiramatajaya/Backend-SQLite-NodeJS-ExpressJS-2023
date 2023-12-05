-- Author: Ej Sobrepena <ej.sobrepena@tuni.fi>
-- Date: 2023-12-04
-- File: 012-correct-sql-statement.sql

SELECT empno,
       ename,
       salary * 12 AS "ANNUAL SALARY"
FROM emp
;

-- End of file
