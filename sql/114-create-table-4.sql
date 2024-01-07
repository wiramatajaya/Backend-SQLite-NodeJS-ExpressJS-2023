-- Author: Ej Sobrepena <ej.sobrepena@tuni.fi>
-- Date: 2024-01-07
-- File: 114-create-table-4.sql

CREATE TABLE inventory (
    id INT PRIMARY KEY NOT NULL UNIQUE,
    item VARCHAR(255),
    worth INT,
    comment TEXT
)
;

-- End of file
