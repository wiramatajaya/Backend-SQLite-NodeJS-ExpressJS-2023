-- Author: Ej Sobrepena <ej.sobrepena@tuni.fi>
-- Date: 2024-01-05
-- File: 081-group-functions-1.sql

SELECT
    job,
    COUNT(DISTINCT mgr) "count of managers"
FROM
    emp
GROUP BY
    job
;

-- End of file
