-- Author: Ej Sobrepena <ej.sobrepena@tuni.fi>
-- Date: 2024-01-05
-- File: 062-coalesce-2.sql

SELECT
    ename "Name",
    (COALESCE(sal, 0) * 0.69 + COALESCE(comm, 0) * 0.8) "Net Income",
    (COALESCE(sal, 0) * 0.31 + COALESCE(comm, 0) * 0.2) "Tax"
FROM
    emp
ORDER BY
    "Net Income" ASC
;

-- End of file
