-- Author: Ej Sobrepena <ej.sobrepena@tuni.fi>
-- Date: 2023-12-07
-- File: 024-where-4.sql

SELECT ename, job, hiredate
FROM emp
WHERE hiredate
    BETWEEN '1981-02-20'
    AND '1981-05-01'
;

-- End of file
