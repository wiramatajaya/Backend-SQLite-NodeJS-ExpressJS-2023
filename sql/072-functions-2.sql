-- Author: Ej Sobrepena <ej.sobrepena@tuni.fi>
-- Date: 2024-01-05
-- File: 072-functions-2.sql

SELECT
    ename "Name",
    LENGTH(ename) "Characters"
FROM
    emp
ORDER BY
    "Characters" ASC,
    "Name" ASC
;

-- End of file
