-- Author: Ej Sobrepena <ej.sobrepena@tuni.fi>
-- Date: 2023-12-07
-- File: 027-where-7.sql

SELECT ename,
       job,
       sal
FROM emp
WHERE LOWER(job) IN ('clerk', 'analyst')
    AND sal NOT IN (1000, 5000)
;

-- End of file
