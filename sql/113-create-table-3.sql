-- Author: Ej Sobrepena <ej.sobrepena@tuni.fi>
-- Date: 2024-01-07
-- File: 113-create-table-3.sql

CREATE TABLE weather (
    id INT PRIMARY KEY,
    time_of_reading TIMESTAMP,
    high DECIMAL(5,2),
    low DECIMAL(5,2),
    sig CHAR(2),
    comment VARCHAR(255)
)
;

-- End of file
