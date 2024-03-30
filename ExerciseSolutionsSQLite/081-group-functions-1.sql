-- Author: Ej Sobrepena <ej.sobrepena@tuni.fi>
-- Date: 2024-01-05
-- File: 081-group-functions-1.sql

SELECT
    COUNT(*) "count of managers"
FROM
    emp
WHERE
    LOWER(job) IN ('manager', 'president')
;

-- End of file
