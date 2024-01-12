const express = require('express');
const sqlite3 = require('sqlite3').verbose();
const app = express();
const port = 8000;

const HTTP_STATUS_BAD_REQUEST = 400;
const HTTP_STATUS_NOT_FOUND = 404;
const DB_PATH = './database.db';
