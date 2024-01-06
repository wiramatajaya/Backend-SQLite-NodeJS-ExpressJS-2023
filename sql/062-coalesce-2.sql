-- Author: Ej Sobrepena <ej.sobrepena@tuni.fi>
-- Date: 2024-01-05
-- File: 062-coalesce-2.sql

SELECT
    ename "Name",
    (COALESCE(sal, 0) + COALESCE(comm, 0)) * 0.69 "Net Income",
    (COALESCE(sal, 0) + COALESCE(comm, 0)) * 0.31 "Tax"
FROM
    emp
ORDER BY
    "Net Income" ASC
;

-- End of file
