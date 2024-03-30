-- Author: Ej Sobrepena <ej.sobrepena@tuni.fi>
-- Date: 2024-01-07
-- File: 111-create-table-1.sql

CREATE TABLE person (
    id INT PRIMARY KEY NOT NULL UNIQUE,
    last VARCHAR(255),
    first VARCHAR(255),
    phone VARCHAR(255),
    zip VARCHAR(255),
    city VARCHAR(255),
    address VARCHAR(255)
)
;

-- End of file
