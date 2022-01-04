const knex = require('knex')({
    client: 'mysql2',
    connection: {
      host : '127.0.0.1',
      port : '3306',
      user : 'root',
      password : 'CAC701cac',
      database : 'aguape'
    },
    pool: { min: 0, max: 7 }
  });

  module.exports = knex;