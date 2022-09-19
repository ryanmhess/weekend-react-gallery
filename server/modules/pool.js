const pg = require('pg');

const Pool = pg.Pool;

const url = require('url');

let config = {};
if (process.env.DATABASE_URL) {
  config = {
    connectionString: process.env.DATABASE_URL,
    ssl: { rejectUnauthorized: false },
  };
} else {
  config = {
    host: 'localhost',
    port: 5432,
    database: 'weekend-react-gallery'
  };
}

const pool = new pg.Pool(config);

pool.on('connect', () => {
    console.log(`Connect to: ${pool.options.host}:${pool.options.port}`);
})

pool.on('error', (error) => {
    console.log(`Failed to connect to: ${pool.options.host}:${pool.options.port} Error: ${error}`);
})

module.exports = pool;