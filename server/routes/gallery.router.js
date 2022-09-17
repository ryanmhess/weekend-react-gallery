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
// router.put('/like/:id', (req, res) => {
//     console.log('Im in gallery.router PUT route.');
//     console.log(req.params);
//     const galleryId = req.params.id;
//     for(const galleryItem of galleryItems) {
//         if(galleryItem.id == galleryId) {
//             galleryItem.likes += 1;
//         }
//     }
//     res.sendStatus(200);
// }); // END PUT Route

//  DELETE

//  UPDATE

module.exports = router;