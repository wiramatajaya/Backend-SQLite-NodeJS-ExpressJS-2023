const express = require('express');
const sqlite3 = require('sqlite3').verbose();
const app = express();
const port = 8000;

const HTTP_STATUS_OK = 200;
const HTTP_STATUS_BAD_REQUEST = 400;
const HTTP_STATUS_NOT_FOUND = 404;
const HTTP_STATUS_INTERNAL_SERVER_ERROR = 500;
const DB_PATH = './database.db';
const bodyParser = require('body-parser');

// Open database in memory
let db = new sqlite3.Database(DB_PATH, sqlite3.OPEN_READWRITE, (err) => {
    if (err) {
        console.error(err.message);
        process.exit(1); // Exit if database connection fails
    }
    console.log('Connected to the SQlite database.');
});

app.use(bodyParser.json()); // for parsing application/json

app.get('/', (req, res) => {
    res.setHeader('Content-Type', 'application/json');
    res.status(HTTP_STATUS_BAD_REQUEST).json({ 'message': 'Bad request. No such endpoint' });
})

app.get('/user/:id', (req, res) => {
    if (!req.params.id) {
        return res.status(HTTP_STATUS_BAD_REQUEST).json({ 'message': 'Bad request. Missing ID parameter' });
    }
    let sql = `SELECT * FROM Users WHERE id = ?`;
    let params = [req.params.id];
    db.get(sql, params, (err, row) => {
        if (err) {
            res.status(HTTP_STATUS_INTERNAL_SERVER_ERROR).json({ "error": err.message });
            return;
        }
        if (!row) {
            res.status(HTTP_STATUS_NOT_FOUND).json({ "message": "User not found" });
            return;
        }
        res.status(HTTP_STATUS_OK).json(row);
    });
});

app.get('/user', (req, res) => {
    if (req.query.last && req.query.dept) {
        let sql = `SELECT * FROM Users WHERE LOWER(last) = ? AND dept = ?`;
        let params = [req.query.last.toLowerCase(), req.query.dept];
        db.all(sql, params, (err, rows) => {
            if (err) {
                res.status(HTTP_STATUS_INTERNAL_SERVER_ERROR).json({ "error": err.message });
                return;
            }
            if (rows.length === 0) {
                return res.status(HTTP_STATUS_NOT_FOUND).json({ "message": 'No users found' });
            }
            res.setHeader('Content-Type', 'application/json');
            res.status(HTTP_STATUS_OK).json(rows);
        });
    } else if (Object.keys(req.query).length === 0) {
        db.all(`SELECT * FROM Users`, (err, rows) => {
            if (err) {
                res.status(HTTP_STATUS_INTERNAL_SERVER_ERROR).json({ "error": err.message });
                return;
            }
            res.setHeader('Content-Type', 'application/json');
            res.status(HTTP_STATUS_OK).json(rows);
        });
    } else {
        res.status(HTTP_STATUS_BAD_REQUEST).json({ 'message': 'Bad request. Missing required query parameters' });
    }
});

app.post('/user', (req, res) => {
    if (!req.body.first || !req.body.last || !req.body.dept) {
        return res.status(HTTP_STATUS_BAD_REQUEST).json({ 'message': 'Bad request. Missing required body parameters' });
    }
    let sql = `INSERT INTO Users (first, last, dept) VALUES (?, ?, ?)`;
    let params = [req.body.first, req.body.last, req.body.dept];
    db.run(sql, params, function(err) {
        if (err) {
            res.status(HTTP_STATUS_INTERNAL_SERVER_ERROR).json({ "error": err.message });
            return;
        }
        res.status(HTTP_STATUS_OK).json({
            "message": "User added successfully",
            "id": this.lastID
        });
    });
});

app.patch('/user/:id', (req, res) => {
    if (!req.body.first || !req.body.last || !req.body.dept) {
        return res.status(HTTP_STATUS_BAD_REQUEST).json({ 'message': 'Bad request. Missing required body parameters' });
    }
    let sql = `UPDATE Users SET first = ?, last = ?, dept = ? WHERE id = ?`;
    let params = [req.body.first, req.body.last, req.body.dept, req.params.id];
    db.run(sql, params, function(err) {
        if (err) {
            res.status(HTTP_STATUS_INTERNAL_SERVER_ERROR).json({ "error": err.message });
            return;
        }
        res.status(HTTP_STATUS_OK).json({
            "message": "User updated successfully",
            "changes": this.changes
        });
    });
});

app.delete('/user/:id', (req, res) => {
    let sql = `DELETE FROM Users WHERE id = ?`;
    let params = [req.params.id];
    db.run(sql, params, function(err) {
        if (err) {
            res.status(HTTP_STATUS_INTERNAL_SERVER_ERROR).json({ "error": err.message });
            return;
        }
        res.status(HTTP_STATUS_OK).json({
            "message": "User deleted successfully",
            "changes": this.changes
        });
    });
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
