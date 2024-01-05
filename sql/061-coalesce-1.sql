-- Author: Ej Sobrepena <ej.sobrepena@tuni.fi>
-- Date: 2024-01-05
-- File: 061-coalesce-1.sql

SELECT
    deptno,
    ename,
    COALESCE(comm, 0) "comm"
FROM
    emp
WHERE
    deptno = 30
ORDER BY
    ename ASC,
    "comm" ASC
;

-- End of file
