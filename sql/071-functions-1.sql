-- Author: Ej Sobrepena <ej.sobrepena@tuni.fi>
-- Date: 2024-01-05
-- File: 071-functions-1.sql

SELECT
    LOWER(ename) "Name",
    LOWER(job) "Job",
    sal "Salary"
FROM
    emp
ORDER BY
    "Name" ASC,
    "Job" ASC
;

-- End of file
