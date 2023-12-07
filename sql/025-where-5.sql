-- Author: Ej Sobrepena <ej.sobrepena@tuni.fi>
-- Date: 2023-12-07
-- File: 015-query-3.sql

SELECT ename, deptno
FROM emp
WHERE deptno IN (10, 30);

-- End of file
