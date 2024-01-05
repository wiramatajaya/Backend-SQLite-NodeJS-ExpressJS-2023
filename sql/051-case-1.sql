-- Author: Ej Sobrepena <ej.sobrepena@tuni.fi>
-- Date: 2024-01-05
-- File: 051-case-1.sql

SELECT
    ename "Name",
    CASE
        WHEN job = 'SALESMAN' THEN 'SALES PERSON'
        ELSE job
    END "New Job Name"
FROM
    emp
ORDER BY
    "New Job Name" ASC,
    "Name" ASC
;

-- End of file
