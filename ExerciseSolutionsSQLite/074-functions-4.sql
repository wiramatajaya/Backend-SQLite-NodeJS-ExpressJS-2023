-- Author: Ej Sobrepena <ej.sobrepena@tuni.fi>
-- Date: 2024-01-05
-- File: 074-functions-4.sql

SELECT
    ename,
    CASE
        WHEN LOWER(ename) LIKE 'a%' OR LOWER(ename) LIKE 'm%' OR LOWER(ename) LIKE 'j%' THEN LOWER(job)
        ELSE job
    END "job"
FROM
    emp
ORDER BY
    ename ASC,
    "job" ASC
;

-- End of file
