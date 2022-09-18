const pg = require('pg');
const Pool = pg.Pool;
const pool = new Pool({
    database: process.env.DATABASE_NAME || 'weekend-react-gallery',
    host: 'localhost',
    port: 5432,
    max: 10,
    idleTimeoutMillis: 30000
});

pool.on('connect', () => {
    console.log(`Connect to: ${pool.options.host}:${pool.options.port}`);
})

pool.on('error', (error) => {
    console.log(`Failed to connect to: ${pool.options.host}:${pool.options.port} Error: ${error}`);
})

module.exports = pool;