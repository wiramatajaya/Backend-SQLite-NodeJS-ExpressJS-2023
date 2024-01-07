-- Author: Ej Sobrepena <ej.sobrepena@tuni.fi>
-- Date: 2024-01-07
-- File: 112-create-table-2.sql

CREATE TABLE football (
    id INT PRIMARY KEY NOT NULL UNIQUE,
    first VARCHAR(255),
    last VARCHAR(255),
    team VARCHAR(255),
    comment VARCHAR(255)
)
;

-- End of file
