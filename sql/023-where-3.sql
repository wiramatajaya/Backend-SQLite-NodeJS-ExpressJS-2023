-- Author: Ej Sobrepena <ej.sobrepena@tuni.fi>
-- Date: 2023-12-07
-- File: 015-query-3.sql

SELECT ename, sal
FROM emp
WHERE sal < 1500
    OR
    sal > 2850
;

-- End of file
