const express = require('express');
const router = express.Router();
const pool = require('../modules/pool.js');

// DO NOT MODIFY THIS FILE FOR BASE MODE

// GET Route
router.get('/', (req, res) => {
    console.log('Im in gallery.router GET route.');
    const sqlText = `
        SELECT * FROM gallery
            ORDER BY "id";
    `
    pool.query(sqlText)
        .then((dbGetRes) => {
            res.send(dbGetRes.rows);
        }).catch((dbGetErr) => {
            console.log('Databse GET error:', dbGetErr);
            res.sendStatus(500);
        });
}); // END GET Route

// PUT Route
router.put('/:id', (req, res) => {
    console.log('Im in gallery.router PUT route.');
    const sqlText = `
        UPDATE gallery
            SET smiles = smiles + 1
            WHERE id = $1
    `
    const sqlValues = [req.params.id]
    pool.query(sqlText, sqlValues)
        .then((dbPutRes) => {
            res.sendStatus(200);
        }).catch((dbPutErr) => {
            console.log('Database PUT error:', dbPutErr);
        })
    
}); // END PUT Route

module.exports = router;