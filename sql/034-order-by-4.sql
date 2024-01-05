-- Author: Ej Sobrepena <ej.sobrepena@tuni.fi>
-- Date: 2024-01-05
-- File: 034-order-by-4.sql

SELECT
    ename "Employee",
    sal "Monthly Salary",
    sal * 1.10 "Sal 10%",
    comm "Comm"
FROM
    emp
WHERE
    comm > sal * 1.10
ORDER BY
    ename,
    sal,
    comm;

-- End of file
