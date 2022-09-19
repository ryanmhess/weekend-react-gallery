const pg = require('pg');

const Pool = pg.Pool;

const url = require('url');

let config = {};

// We need a different pg configuration if we're running
// on Heroku, vs if we're running locally.
//
// Heroku gives us a process.env.DATABASE_URL variable,
// so if that's set, we know we're on heroku.
if (process.env.DATABASE_URL) {
  config = {
    // We use the DATABASE_URL from Heroku to connect to our DB
    connectionString: process.env.DATABASE_URL,
    // Heroku also requires this special `ssl` config
    ssl: { rejectUnauthorized: false },
  };
} else {
  // If we're not on heroku, configure PG to use our local database
  config = {
    host: 'localhost',
    port: 5432,
    database: 'prime_app', // CHANGE THIS LINE to match your local database name!
  };
}

// this creates the pool that will be shared by all other modules
const pool = new pg.Pool(config);

pool.on('connect', () => {
    console.log(`Connect to: ${pool.options.host}:${pool.options.port}`);
})

pool.on('error', (error) => {
    console.log(`Failed to connect to: ${pool.options.host}:${pool.options.port} Error: ${error}`);
})

module.exports = pool;