# Node.js RESTful API with SQLite

This project is a Node.js application that implements a RESTful API using SQLite for managing user data.

## Prerequisites

- Node.js and npm must be installed on your system.
- SQLite command-line utility for running SQL scripts.

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
- `POST /user`: Adds a new user. The user's first name, last name, and department should be sent in the body of the request as JSON.
- `PATCH /user/:id`: Updates the user with the specified ID. The user's new first name, last name, and department should be sent in the body of the request as JSON.
- `DELETE /user/:id`: Deletes the user with the specified ID.

## Database

The SQLite database file (`database.db`) is located in the same directory as `server.js`. You can manage the database using the SQL scripts in the `sql` directory:

- `create.sql`: Creates the `Users` table in the SQLite database.
- `insert.sql`: Inserts sample data into the `Users` table.
- `delete.sql`: Deletes all data from the `Users` table.

You can run these scripts using the SQLite command-line utility with the following command:

```bash
sqlite3 database.db < sql/<script>.sql
```

Please note that these operations will directly affect the database and cannot be undone. Always ensure to have a backup of your data.
