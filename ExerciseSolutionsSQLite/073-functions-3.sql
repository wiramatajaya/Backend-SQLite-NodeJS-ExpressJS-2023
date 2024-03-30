-- Author: Ej Sobrepena <ej.sobrepena@tuni.fi>
-- Date: 2024-01-05
-- File: 073-functions-3.sql

SELECT
    empno,
    ename,
    ROUND(sal * 1.15) "new salary",
    ROUND(sal * 1.15) - sal "increase"
FROM
    emp
ORDER BY
    ename ASC,
    "new salary" ASC
;

-- End of file
