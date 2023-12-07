-- Author: Ej Sobrepena <ej.sobrepena@tuni.fi>
-- Date: 2023-12-07
-- File: 028-where-8.sql

SELECT ename,
       sal,
       comm
FROM emp
WHERE comm IS NOT NULL;

-- End of file
