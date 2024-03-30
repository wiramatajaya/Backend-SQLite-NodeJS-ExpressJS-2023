# Back-End Development with SQLite, Node.js, and Express.js 2023

This repository contains a Node.js application that implements a RESTful API using SQLite, along with a collection of SQL scripts for database management and exercise solutions.

## Structure

- `/project`: Contains the Node.js application. This application is a RESTful API that allows for operations like retrieving, adding, updating, and deleting user data. It uses SQLite as the database. Refer to the README inside the project directory for detailed information.

- `/sql`: Contains SQL scripts for setting up the database, inserting sample data, and other database operations. Refer to the README inside the sql directory for instructions on using these scripts.

- `/ExerciseSolutionsSQLite`: Contains SQL scripts that are solutions to various SQL exercises.

## Getting Started

To start using this project, you will need to set up both the Node.js application and the SQLite database.

### Prerequisites

- Node.js and npm installed on your system.
- SQLite command-line utility for running SQL scripts.

### Setting up the Project

1. Clone the repository to your local machine.
2. Navigate to the `/project` directory and follow the instructions in the README there to set up the Node.js application.
3. Navigate to the `/sql` directory and follow the instructions in the README there to set up and manage the SQLite database.

### Using the Exercise Solutions

The `/ExerciseSolutionsSQLite` directory contains SQL scripts that are solutions to various SQL exercises. You can run these scripts using the SQLite command-line utility with the following command:

```bash
sqlite3 database.db < ExerciseSolutionsSQLite/<script>.sql
```

Please note that these operations will directly affect the database and cannot be undone. Always ensure to have a backup of your data.
