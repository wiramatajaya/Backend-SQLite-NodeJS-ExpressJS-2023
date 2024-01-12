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

app.get('/', (req, res) => {
    res.setHeader('Content-Type', 'application/json');
    res.status(HTTP_STATUS_BAD_REQUEST).json({ 'message': 'Bad request. No such endpoint' });
})

app.get('/user/:id', (req, res) => {
    let sql = `SELECT * FROM Users WHERE id = ?`;
    let params = [req.params.id];
    db.get(sql, params, (err, row) => {
        if (err) {
            return console.error(err.message);
        }
        if (!row) {
            return res.status(HTTP_STATUS_NOT_FOUND).json({ "message": "User not found" });
        }
        res.setHeader('Content-Type', 'application/json');
        res.send(row);
    });
});

app.get('/user', (req, res) => {
    if (req.query.last && req.query.dept) {
        let sql = `SELECT * FROM Users WHERE LOWER(last) = ? AND dept = ?`;
        let params = [req.query.last.toLowerCase(), req.query.dept];
        db.all(sql, params, (err, rows) => {
            if (err) {
                throw err;
            }
            if (rows.length === 0) {
                return res.status(HTTP_STATUS_NOT_FOUND).json({ "message": 'No users found' });
            }
            res.setHeader('Content-Type', 'application/json');
            res.send(rows);
        });
    } else if (Object.keys(req.query).length === 0) {
        db.all(`SELECT * FROM Users`, (err, rows) => {
            if (err) {
                throw err;
            }
            res.setHeader('Content-Type', 'application/json');
            res.send(rows);
        });
    } else {
        res.status(HTTP_STATUS_BAD_REQUEST).json({ 'message': 'Bad request. Missing required query parameters' });
    }
});

app.listen(port, () => {
    console.log(`Server is running on port ${port}`);
});

process.on('SIGINT', () => {
    db.close((err) => {
        if (err) {
            return console.error(err.message);
        }
        console.log('Close the database connection.');
        process.exit(0);
    });
});
