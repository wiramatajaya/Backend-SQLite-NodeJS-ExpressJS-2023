SQL Directory Instructions

This directory contains SQL scripts that are used to interact with the SQLite database for this project. Please ensure that all commands are run from the root directory of the project.

Database Setup

To set up the database and create the Users table, use the following command:

sqlite3 database.db < sql/create.sql

This command will create a SQLite database named database.db and a table named Users.

Inserting Sample Data

To populate the Users table with sample data, use the following command:

sqlite3 database.db < sql/insert.sql

This command will insert sample data into the Users table.

Deleting Data

To delete all data from the Users table, use the following command:

sqlite3 database.db < sql/delete.sql

This command will delete all records from the Users table.

Please note that these operations will directly affect the database and cannot be undone. Always ensure to have a backup of your data.
