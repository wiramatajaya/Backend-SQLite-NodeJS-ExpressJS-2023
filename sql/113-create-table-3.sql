-- Author: Ej Sobrepena <ej.sobrepena@tuni.fi>
-- Date: 2024-01-07
-- File: 113-create-table-3.sql

CREATE TABLE weather (
    id INT PRIMARY KEY NOT NULL UNIQUE,
    time_of_reading TIMESTAMP,
    high REAL,
    low REAL,
    sig CHAR(2),
    comment TEXT
)
;

-- End of file
