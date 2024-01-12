const express = require('express');
const sqlite3 = require('sqlite3').verbose();
const app = express();
const port = 8000;

const HTTP_STATUS_BAD_REQUEST = 400;
const HTTP_STATUS_NOT_FOUND = 404;
const DB_PATH = './database.db';

// Open database in memory
let db = new sqlite3.Database(DB_PATH, sqlite3.OPEN_READONLY, (err) => {
    if (err) {
        console.error(err.message);
        process.exit(1); // Exit if database connection fails
    }
    console.log('Connected to the SQlite database.');
});
