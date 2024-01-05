-- Author: Ej Sobrepena <ej.sobrepena@tuni.fi>
-- Date: 2024-01-05
-- File: 043-like-3.sql

SELECT
    ename
FROM
    emp
WHERE
    (deptno = 10 OR mgr = 7782)
    AND LOWER(ename) LIKE '%l%l%'
;

-- End of file
