-- Author: Ej Sobrepena <ej.sobrepena@tuni.fi>
-- Date: 2024-01-07
-- File: 113-create-table-3.sql

CREATE TABLE weather (
    id INT PRIMARY KEY NOT NULL UNIQUE,
    time_of_reading TIMESTAMP,
    high DECIMAL,
    low DECIMAL,
    sig VARCHAR(255),
    comment VARCHAR(255)
)
;

-- End of file
