Author: Ej Sobrepeña
Date: 2023-01-11

This Node.js project implements a RESTful API with SQLite.

## Prerequisites

1. Node.js and npm must be installed on your system.

## Setup

1. Navigate to the project directory.
2. Run `npm install` to install the necessary dependencies.

## Running the Server

1. Start the server by running `node server.js`.
2. The server will start on port 8000.

## API Endpoints

- `GET /user`: Returns all users in JSON format.
- `GET /user/:id`: Returns the user with the specified ID in JSON format.
- `GET /user?last=<last>&dept=<dept>`: Returns users with the specified last name and department in JSON format.

## Database

The SQLite database file (`database.db`) is located in the same directory as `server.js`. You can manage the database using the SQL scripts in the `sql` directory:

- `create.sql`: Creates the `Users` table in the SQLite database.
- `insert.sql`: Inserts sample data into the `Users` table.
- `delete.sql`: Deletes all data from the `Users` table.

You can run these scripts using the SQLite command-line utility with the following command:

```bash
sqlite3 database.db < sql/<script>.sql
